.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$1;,
        Landroid/view/ViewRootImpl$2;,
        Landroid/view/ViewRootImpl$3;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$HCTRelayoutHandler;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$WindowStoppedCallback;
    }
.end annotation


# static fields
.field private static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1e

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_DRAW_FINISHED:I = 0x1d

.field private static final MSG_FINISH_MOVING_TASK:I = 0x64

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_TOUCH_FOCUS_TRANSFERRED:I = 0x65

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SAFE_DEBUG:Z

.field private static final SUPPORT_IN_MOUSESTYLUS_MODE:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final USE_MT_RENDERER:Z = true

.field private static final bDTSEnabled:Z = true

.field private static final bODTCEnabled:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sAODEnabled:Z

.field public static sAlwaysAssignFocus:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sDesktopMode:Z

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsHighContrastTextEnabled:Z

.field static sRendererDemoted:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sSTSOption:D


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAttachedSurfaceView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field private mChildWindowCount:I

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field private mCurrentDirectPenInputView:Landroid/view/View;

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDecreaseChildWindow:Ljava/lang/Runnable;

.field private final mDensity:I

.field mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mDrawsNeededToReport:I

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceDraw:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFrameReversedForFixedOrientation:Z

.field mFullRedrawNeeded:Z

.field final mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field private final mIncreaseChildWindow:Ljava/lang/Runnable;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field mIsCreating:Z

.field private mIsDeviceDefault:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsNoDropIcon:Z

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mMWBG:Landroid/view/SurfaceControl;

.field private mMWBGHeight:I

.field mMWBGParentDecorView:Landroid/view/View;

.field private mMWBGSurfaceInsetsLeft:I

.field private mMWBGSurfaceInsetsTop:I

.field private mMWBGWidth:I

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field public mParentDecorView:Landroid/view/View;

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field mPointerCapture:Z

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mRequestedMWBG:Z

.field private mResizeMode:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTranslatedPoint:Landroid/graphics/PointF;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field final mWindowSession:Landroid/view/IWindowSession;

.field private final mWindowStoppedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$WindowStoppedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    return v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    return v0
.end method

.method static synthetic -get2(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic -get5(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic -get6(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic -get7(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic -get8(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    return v0
.end method

.method static synthetic -get9(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method static synthetic -set2(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    return-void
.end method

.method static synthetic -wrap19(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/ViewRootImpl;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semCreateMWBG()V

    return-void
.end method

.method static synthetic -wrap21(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    return-void
.end method

.method static synthetic -wrap22(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendUserActionEvent()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->doRelayoutForHCT(Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    const-string/jumbo v0, "5"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    sput-boolean v2, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    sput-boolean v2, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Landroid/view/ViewRootImpl;->sSTSOption:D

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    sput-boolean v2, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    sput-boolean v2, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    const-string/jumbo v0, "view.in_mousestylus_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v12, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    iput v4, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    const-string/jumbo v0, "pq"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    iput v11, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput v12, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v11}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mFrameReversedForFixedOrientation:Z

    const-string/jumbo v0, "ViewRootImpl"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    iput v11, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iput v11, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    iput v11, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    iput v11, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    iput v11, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mMWBGParentDecorView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mIncreaseChildWindow:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDecreaseChildWindow:Ljava/lang/Runnable;

    iput v11, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v2, "ViewRootImpl, mDisplay is null #1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    new-instance v0, Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    iput v4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iput v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iput-boolean v12, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v0, :cond_1

    sput-boolean v12, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    sput-boolean v12, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1110082

    invoke-virtual {v0, v1, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    if-eqz v9, :cond_2

    iget v0, v9, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_2

    iput-boolean v12, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    :cond_2
    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-eqz v10, :cond_3

    :try_start_0
    const-string/jumbo v0, "com.sec.feature.spen_usp"

    const/4 v1, 0x3

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v1, "AbstractMethodError occured."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .locals 2

    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 6

    iget v4, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    const/16 v2, 0x60

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v4, v0, 0x60

    shr-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_0

    or-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->semEnsureMouseStylusMode(Z)Z

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->semEnsureMouseStylusMode(Z)Z

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    return v2

    :cond_4
    return v2
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v4

    float-to-int v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v4

    const/high16 v5, -0x40000000    # -2.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    return v6

    :cond_3
    const/16 v4, 0x64

    if-ge v1, v4, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v4, 0x1

    return v4

    :cond_5
    return v6
.end method

.method private collectViewAttributes()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v3, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-ne v2, v3, :cond_0

    :cond_2
    return v5
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 8

    const-string/jumbo v3, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v3, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setDssScale(F)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->checkPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v1, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "mThreadedRenderer.destroy()#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_2
    return-void
.end method

.method private dipToPx(I)I
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchCoverStateChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
    .locals 8

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p9

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowCallbacks;

    move-object/from16 v0, p9

    invoke-interface {v6, v0, v2, p4, p5}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v7

    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_b

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_c

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v6

    :cond_3
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz v5, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v6

    :cond_4
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    if-eqz v5, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v6

    :cond_5
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    if-eqz v5, :cond_6

    if-eqz p8, :cond_6

    new-instance v6, Landroid/util/MergedConfiguration;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    move-object/from16 p8, v6

    :cond_6
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v5, :cond_7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v6

    :cond_7
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    if-eqz v5, :cond_8

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v6

    :cond_8
    iput-object p5, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    if-eqz v5, :cond_9

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p6, v6

    :cond_9
    iput-object p6, v1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    if-eqz v5, :cond_a

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 p9, v6

    :cond_a
    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    if-eqz p10, :cond_d

    const/4 v6, 0x1

    :goto_3
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz p11, :cond_e

    const/4 v6, 0x1

    :goto_4
    iput v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v0, p12

    iput v0, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_b
    const/4 v6, 0x4

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private doRelayoutForHCT(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v1, "Recursion detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_0
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Surface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Surface is not valid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semCreateMWBG()V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v2, v3, :cond_8

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semUpdateMWBG()V

    :cond_6
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v2, :cond_a

    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_9
    monitor-exit v3

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v16

    :goto_4
    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v20

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/16 p1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_10

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_d
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_e
    const/16 v16, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v20, v0

    goto :goto_5

    :cond_10
    if-eqz p1, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int v12, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d

    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    :goto_6
    if-eqz v7, :cond_12

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_12
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v15, 0x1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    const-wide/32 v30, 0xf4240

    div-long v4, v4, v30

    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v2, :cond_15

    if-eqz v15, :cond_1b

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez v15, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    move/from16 v25, v0

    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v2, v12, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v2, v11, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    const/16 v25, 0x1

    :cond_17
    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_18
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_19
    if-eqz v28, :cond_1a

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    :cond_1b
    if-eqz v16, :cond_1c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_1c
    return-void

    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_1e
    const/16 v25, 0x1

    goto :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_21

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z

    sget-boolean v2, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "mThreadedRenderer.initializeIfNeeded()#1 mSurface={%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-wide v0, v6, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void

    :catch_0
    move-exception v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    return-void

    :cond_21
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1b

    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 9

    sget-boolean v7, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    return v7

    :cond_0
    :try_start_0
    iget v4, p6, Landroid/graphics/Rect;->left:I

    iget v6, p6, Landroid/graphics/Rect;->top:I

    iget v5, p6, Landroid/graphics/Rect;->right:I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setHighContrastText(Z)V

    iget v7, p6, Landroid/graphics/Rect;->left:I

    if-ne v4, v7, :cond_1

    iget v7, p6, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_7

    :cond_1
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_2
    iget v7, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p4, :cond_8

    :cond_3
    :goto_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    neg-int v7, p3

    int-to-float v7, v7

    neg-int v8, p4

    int-to-float v8, v8

    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v7, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_5
    if-eqz p5, :cond_9

    iget v7, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_6

    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v7, 0x1

    return v7

    :cond_7
    :try_start_5
    iget v7, p6, Landroid/graphics/Rect;->right:I

    if-ne v5, v7, :cond_1

    iget v7, p6, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v0, v7, :cond_2

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not lock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v7, 0x0

    return v7

    :catch_1
    move-exception v2

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    const/4 v7, 0x0

    return v7

    :cond_8
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_6
    iget-boolean v8, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v8, :cond_a

    const/4 v8, 0x0

    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_a
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    throw v7

    :catch_2
    move-exception v3

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not unlock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v7, 0x0

    return v7

    :catch_3
    move-exception v3

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "Could not unlock surface"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v7, 0x0

    return v7
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v3, p3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    return-void

    :cond_1
    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz v0, :cond_6

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v10, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    sget-boolean v6, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz v6, :cond_7

    sget-boolean v6, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v6, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "mThreadedRenderer.destroy()#2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_9

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_b

    :cond_9
    const/4 v3, 0x1

    :goto_4
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d

    move v5, v3

    :goto_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    invoke-static {v7, v5, v8, v9}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;Z)Landroid/view/ThreadedRenderer;

    move-result-object v7

    iput-object v7, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    sget-boolean v6, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ThreadedRenderer.create() translucent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v10, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v10, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_3

    :cond_b
    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_9

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_c

    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    const/4 v5, 0x1

    goto :goto_5
.end method

.method private endDragResizing()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_1
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ensureTouchModeLocally() error occurred. inTouchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v4
.end method

.method private enterTouchMode()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {v1, v3, v5, v4}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    return v5

    :cond_1
    return v4
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6

    const-string/jumbo v1, "deliverInputEvent"

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 15

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_0

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v11, v11, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x1110004

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v10, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v12, v12, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v13, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x2

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v12, "enabled_accessibility_s_talkback"

    const/4 v13, 0x0

    const/4 v14, -0x3

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v4, v11

    if-eqz v3, :cond_4

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v12, "accessibility_large_cursor"

    const/4 v13, 0x2

    const/4 v14, -0x3

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v12, "accessibility_cursor_color"

    const v13, 0x10601d3

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const/4 v14, -0x3

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v12, "universal_switch_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_2

    const v1, -0xff432c

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v12, "accessibility_universal_switch_cursor_color"

    const v13, -0xff432c

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v8, v11

    invoke-virtual {v2, v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v11

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    const v11, 0x10601d3

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v4, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v11, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, v5, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "universal_switch_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    return v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v5, :cond_4

    :cond_3
    return v7

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {v1, p1, v8}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v5, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v5, v5

    iget v6, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    return v5

    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_7
    return v7
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    return-object v2

    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    return-object v6
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7

    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v0, 0x500

    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x300

    :cond_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    return v0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 27

    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v13, v0, [I

    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v14, v0, [I

    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v2, v0, [I

    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v3, v0, [I

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/high16 v15, 0x43480000    # 200.0f

    const/16 v21, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    move/from16 v0, v21

    int-to-float v15, v0

    :goto_0
    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v13, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v14, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v2, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v3, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_1
    move/from16 v0, v20

    int-to-float v15, v0

    goto :goto_0

    :catch_0
    move-exception v18

    const-string/jumbo v24, "ViewRootImpl"

    const-string/jumbo v25, "[Surface touch] Default Rotate = false"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v10, v10, v24

    aget v24, v14, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v11, v11, v24

    aget v24, v2, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v8, v8, v24

    aget v24, v3, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v9, v9, v24

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_3
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v5, v10, v24

    int-to-float v0, v4

    move/from16 v24, v0

    div-float v6, v11, v24

    div-float v7, v8, v9

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    aget v25, v13, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v5

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v12, v12, v24

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_5

    :cond_4
    const/16 v16, 0x1

    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_6
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v12, v12, v24

    if-eqz v16, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    const-string/jumbo v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    return v24

    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v24, v8, v24

    if-ltz v24, :cond_8

    const/high16 v24, 0x40000000    # 2.0f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_8

    add-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v15, v24

    cmpg-float v24, v12, v24

    if-gez v24, :cond_8

    const-string/jumbo v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " varX:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    return v24

    :cond_8
    const/16 v24, 0x0

    return v24
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/HandlerActionQueue;

    invoke-direct {v0}, Landroid/view/HandlerActionQueue;-><init>()V

    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3

    :cond_0
    const/4 v0, 0x0

    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_1

    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    if-nez p2, :cond_9

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :goto_3
    if-eqz v5, :cond_8

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_8

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object v4
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_1

    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    if-ne v3, v8, :cond_2

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-boolean v5, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    :goto_0
    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    sget-boolean v4, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_0
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    iput-boolean v5, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    return-void

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto :goto_0

    :cond_4
    if-eq v3, v10, :cond_5

    if-ne v3, v9, :cond_8

    :cond_5
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    :cond_6
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    :cond_8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-ne v3, v9, :cond_9

    iget-object v4, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->prepareToEnterProcess()V

    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    if-ne v3, v10, :cond_b

    iget-boolean v4, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    if-nez v4, :cond_a

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/16 v5, 0x3f4

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_a
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_d

    if-eqz v1, :cond_c

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/16 v5, 0x3f4

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    :cond_c
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_d

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsNoDropIcon:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_2
    if-ne v3, v9, :cond_e

    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v7, v4, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "OutOfResourcesException initializing HW surface"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "No processes killed for memory; killing self"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handlePointerCaptureChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    :cond_1
    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    if-nez v14, :cond_2

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    and-int/lit8 v16, v3, 0x1

    if-nez v16, :cond_3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    :goto_0
    if-eqz v15, :cond_6

    xor-int/lit8 v16, v10, 0x1

    if-eqz v16, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v0, v13, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v15, v13

    check-cast v15, Landroid/view/View;

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    if-nez v10, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_3
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    return-void
.end method

.method public static isDesktopmode()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    return v0
.end method

.method private isInLocalFocusMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move-object v2, p0

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    :cond_2
    :goto_1
    return v3

    :cond_3
    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    move v3, v4

    goto :goto_1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 7

    const/16 v6, 0x82

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v4

    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2

    :cond_2
    return v4
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v2}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "maybeUpdateTooltip called after view was removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d5

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const v8, 0x10501fb

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v7, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    const/4 v0, 0x0

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v7, v7, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v7, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v0, v7

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v7}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v7}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v7

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    if-nez v7, :cond_8

    const/4 v3, 0x1

    :cond_1
    :goto_2
    if-nez v3, :cond_3

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v7}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v7}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ne v7, v8, :cond_2

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    if-eqz v7, :cond_5

    const v7, 0x10501fa

    :goto_3
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v9, 0x1

    invoke-virtual {p3, v7, v8, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    :cond_5
    const v7, 0x105004c

    goto :goto_3

    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v7, v7, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d5

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v7, :cond_7

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v0, v7

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v0, v7

    goto/16 :goto_1

    :cond_8
    add-int v7, v0, p4

    div-int/lit8 v0, v7, 0x2

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v7}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v7

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "No merged config provided."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v5}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v5, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object v1, v2

    :cond_1
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_2

    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v5, v1}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v6

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5, v1, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {v5, v4, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    :goto_1
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    goto :goto_1
.end method

.method private performDraw()V
    .locals 12

    const-wide/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mDisplayState:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :pswitch_0
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    const-string/jumbo v6, "draw"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/RenderNode;

    invoke-virtual {v6}, Landroid/view/RenderNode;->endAllAnimators()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_1
    return-void

    :pswitch_2
    sget-boolean v6, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "aod_show_state"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performDraw() was skipped by AOD_SHOW_STATE... DisplayState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    return-void

    :catchall_0
    move-exception v6

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v6

    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_3
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_6

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_4

    :try_start_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iput-object v9, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_5

    const-string/jumbo v6, "fence"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->fence()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v6, v7}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v5, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v6, Landroid/view/-$Lambda$0h_uZnZRHKL2x08-ZPzgSojgn6M;

    invoke-direct {v6, p0}, Landroid/view/-$Lambda$0h_uZnZRHKL2x08-ZPzgSojgn6M;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "Window redraw count down interruped!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "layout"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const-string/jumbo v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " during layout: running second layout pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v6, v10

    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$4;

    invoke-direct {v2, p0, v10}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return-void

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 4

    const-wide/16 v2, 0x8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "measure"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 82

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    const/16 v81, 0x0

    const/16 v55, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v75

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v75

    if-ne v4, v0, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    move/from16 v76, v0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v4, :cond_13

    const/4 v4, 0x1

    move v10, v4

    :goto_1
    if-nez v75, :cond_14

    const/4 v4, 0x1

    :goto_2
    if-eq v10, v4, :cond_15

    const/16 v74, 0x1

    :goto_3
    const/16 v60, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/16 v68, 0x1

    move-object/from16 v60, v6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v10, :cond_3

    move-object/from16 v60, v6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_17

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :cond_3
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_18

    new-instance v66, Landroid/graphics/Point;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, v66

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v66

    iget v9, v0, Landroid/graphics/Point;->y:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v75

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_4

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "dispatchAttachedToWindow"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    :cond_5
    :goto_6
    if-eqz v76, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v75

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    move/from16 v0, v75

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    if-eqz v74, :cond_6

    if-nez v75, :cond_1b

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    :cond_6
    if-nez v75, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    :cond_8
    const/16 v4, 0x8

    move/from16 v0, v75

    if-ne v0, v4, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_a
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    move/from16 v53, v0

    :goto_8
    if-eqz v53, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    xor-int/lit8 v10, v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_b
    :goto_9
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v81, v81, v4

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v60, v6

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    move-object/from16 v60, v6

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_29

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v64, v0

    if-nez v64, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v46, 0x0

    :goto_a
    move/from16 v0, v46

    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v64, 0x10

    :cond_10
    add-int/lit8 v46, v46, 0x1

    goto :goto_a

    :cond_11
    const/16 v76, 0x1

    goto/16 :goto_0

    :cond_12
    const/16 v76, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_1

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_15
    const/16 v74, 0x0

    goto/16 :goto_3

    :cond_16
    const/16 v74, 0x0

    goto/16 :goto_3

    :cond_17
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v8

    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v9

    goto/16 :goto_5

    :cond_19
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v8, v4, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v9, v4, :cond_5

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/16 v81, 0x1

    goto/16 :goto_6

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1c
    const/16 v53, 0x1

    goto/16 :goto_8

    :cond_1d
    const/16 v53, 0x0

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/16 v49, 0x1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const/16 v49, 0x1

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const/16 v49, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/16 v49, 0x1

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v4, v10, :cond_24

    const/16 v49, 0x1

    :cond_24
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_25

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_b

    :cond_25
    const/16 v81, 0x1

    invoke-static {v6}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance v66, Landroid/graphics/Point;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, v66

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v66

    iget v9, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_9

    :cond_26
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v8

    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v9

    goto/16 :goto_9

    :cond_27
    if-nez v64, :cond_28

    const/16 v64, 0x20

    :cond_28
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v64

    if-eq v4, v0, :cond_29

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v64

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v60, v6

    :cond_29
    if-eqz v60, :cond_2b

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2a

    move-object/from16 v0, v60

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, -0x3

    move-object/from16 v0, v60

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v60

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x2000000

    and-int/2addr v4, v11

    if-eqz v4, :cond_43

    const/4 v4, 0x1

    :goto_b
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v4, :cond_2c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v81, v81, v4

    :cond_2c
    if-eqz v53, :cond_2d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    :cond_2d
    if-eqz v53, :cond_48

    if-eqz v81, :cond_48

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v4, v10, :cond_44

    :cond_2e
    const/16 v80, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v4, :cond_49

    const/4 v4, 0x1

    :goto_d
    or-int v80, v80, v4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v80, v80, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v4

    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    move/from16 v31, v0

    :goto_e
    const/16 v50, 0x0

    const/16 v63, 0x0

    const/16 v73, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v69

    if-nez v75, :cond_4b

    const/16 v52, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    move/from16 v79, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_2f

    if-nez v80, :cond_2f

    if-nez v49, :cond_2f

    if-nez v76, :cond_2f

    if-eqz v60, :cond_4c

    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-eqz v52, :cond_30

    if-eqz v31, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_5e

    move/from16 v50, v76

    :cond_30
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    :cond_31
    const/16 v45, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v42

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v12, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v12, v0, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v75

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v63

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Relayout returned: old=%s new=%s result=0x%s surface={%s} changed="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-eq v0, v4, :cond_60

    const/4 v4, 0x1

    :goto_11
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v56, v11, v12

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v11, v17

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v11, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "valid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x3

    aput-object v12, v11, v17

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v61

    move-object/from16 v0, v61

    iget v4, v0, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    xor-int/lit8 v10, v10, 0x1

    const/4 v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput v4, v0, Landroid/content/res/Configuration;->seq:I

    const/16 v73, 0x1

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v59, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v33, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v77, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v67, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v58, v4, 0x1

    and-int/lit8 v4, v63, 0x20

    if-eqz v4, :cond_61

    const/16 v70, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v4, v10, :cond_62

    const/16 v23, 0x1

    :goto_13
    if-eqz v33, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_35
    if-eqz v59, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v33, 0x1

    :cond_36
    if-eqz v67, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v33, 0x1

    :cond_37
    if-eqz v23, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    const/16 v33, 0x1

    :cond_38
    if-nez v33, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-eq v4, v10, :cond_63

    :cond_39
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    :cond_3a
    if-eqz v77, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v33, 0x1

    :cond_3b
    if-nez v42, :cond_64

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3e

    const/16 v55, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    sget-wide v10, Landroid/view/ViewRootImpl;->sSTSOption:D

    const-wide/16 v20, 0x0

    cmpl-double v4, v10, v20

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-wide v20, Landroid/view/ViewRootImpl;->sSTSOption:D

    move-wide/from16 v0, v20

    invoke-virtual {v4, v10, v0, v1}, Landroid/view/Surface;->setSTSOption(Landroid/content/Context;D)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_3e

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v45

    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mThreadedRenderer.initialize() mSurface={%s} hwInitialized="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isValid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-eqz v45, :cond_3e

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_3e

    sget-boolean v4, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3e
    :goto_15
    and-int/lit8 v4, v63, 0x10

    if-eqz v4, :cond_6a

    const/16 v41, 0x1

    :goto_16
    and-int/lit8 v4, v63, 0x8

    if-eqz v4, :cond_6b

    const/16 v35, 0x1

    :goto_17
    if-nez v41, :cond_6c

    move/from16 v36, v35

    :goto_18
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    move/from16 v0, v36

    if-eq v4, v0, :cond_3f

    if-eqz v36, :cond_6e

    if-eqz v41, :cond_6d

    const/4 v4, 0x0

    :goto_19
    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3f
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v40

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v40

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v4, v10, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v4, v10, :cond_41

    :cond_40
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_73

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7b

    if-nez v42, :cond_70

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceCreated"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    if-eqz v25, :cond_6f

    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_1b
    if-ge v4, v10, :cond_6f

    aget-object v24, v25, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_43
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_44
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_45

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v8, :cond_45

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_2e

    :cond_45
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_47

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v9, :cond_47

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_46

    const/16 v80, 0x1

    goto/16 :goto_c

    :cond_46
    const/16 v80, 0x0

    goto/16 :goto_c

    :cond_47
    const/16 v80, 0x0

    goto/16 :goto_c

    :cond_48
    const/16 v80, 0x0

    goto/16 :goto_c

    :cond_49
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_4a
    const/16 v31, 0x1

    goto/16 :goto_e

    :cond_4b
    const/16 v52, 0x0

    goto/16 :goto_f

    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    :cond_4d
    :goto_1c
    if-eqz v53, :cond_81

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_80

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    move/from16 v34, v0

    :goto_1d
    if-nez v34, :cond_82

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move/from16 v72, v0

    :goto_1e
    if-eqz v34, :cond_51

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v10}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    iget v0, v5, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v12, v17

    iget v0, v5, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v19, 0x1

    aget v17, v17, v19

    iget v0, v5, Landroid/view/View;->mBottom:I

    move/from16 v19, v0

    add-int v17, v17, v19

    iget v0, v5, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    sub-int v17, v17, v19

    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_4f

    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Region;->translate(II)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_50

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_51
    :goto_1f
    if-eqz v72, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    :cond_52
    if-eqz v31, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v48 .. v48}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-nez v50, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_54

    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_83

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v48

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v48

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v48

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v15

    :goto_20
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v48

    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_54
    :goto_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_55

    sget-boolean v4, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-eqz v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    :cond_55
    if-nez v76, :cond_56

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_84

    :cond_56
    move/from16 v27, v52

    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_85

    move/from16 v43, v52

    :goto_23
    if-eqz v43, :cond_86

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    move/from16 v62, v0

    :goto_24
    if-eqz v62, :cond_87

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    :cond_57
    :goto_25
    if-nez v27, :cond_58

    if-eqz v62, :cond_59

    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_88

    const/16 v51, 0x0

    :goto_26
    if-nez v51, :cond_59

    const/16 v4, 0x20

    invoke-virtual {v5, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_59
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v43, :cond_5b

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v47

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v47

    if-eq v0, v4, :cond_5b

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    if-eqz v16, :cond_5b

    if-eqz v47, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v18

    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onPreWindowFocus() & onPostWindowFocus() hasWindowFocus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " softInputMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " focusedView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mWindowAttributes.flags=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mayUseInputMethod="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v47

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v16

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    xor-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    :cond_5b
    and-int/lit8 v4, v63, 0x2

    if-eqz v4, :cond_5c

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v65, v0

    new-instance v57, Landroid/graphics/Rect;

    invoke-direct/range {v57 .. v57}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    and-int/lit8 v4, v65, 0x4

    if-eqz v4, :cond_8a

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v4, v10, :cond_8a

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFrameReversedForFixedOrientation:Z

    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_8d

    xor-int/lit8 v26, v52, 0x1

    :goto_28
    if-nez v26, :cond_91

    xor-int/lit8 v4, v55, 0x1

    if-eqz v4, :cond_91

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_8f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8f

    const/16 v46, 0x0

    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v46

    if-ge v0, v4, :cond_8e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    add-int/lit8 v46, v46, 0x1

    goto :goto_29

    :cond_5e
    const/16 v50, 0x1

    goto/16 :goto_10

    :cond_5f
    const/16 v50, 0x0

    goto/16 :goto_10

    :cond_60
    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_61
    const/16 v70, 0x0

    goto/16 :goto_12

    :cond_62
    const/16 v23, 0x0

    goto/16 :goto_13

    :cond_63
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-ne v4, v10, :cond_39

    if-eqz v58, :cond_3a

    goto/16 :goto_14

    :catch_0
    move-exception v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    return-void

    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_68

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_65
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "mThreadedRenderer.destroy()#3"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :catch_1
    move-exception v37

    goto/16 :goto_1a

    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-ne v0, v4, :cond_69

    if-nez v70, :cond_69

    if-eqz v79, :cond_3e

    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "mThreadedRenderer.updateSurface() mSurface={%s}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isValid="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/view/Surface;->mNativeObject:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_15

    :catch_2
    move-exception v38

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    return-void

    :cond_6a
    const/16 v41, 0x0

    goto/16 :goto_16

    :cond_6b
    const/16 v35, 0x0

    goto/16 :goto_17

    :cond_6c
    const/16 v36, 0x1

    goto/16 :goto_18

    :cond_6d
    const/4 v4, 0x1

    goto/16 :goto_19

    :cond_6e
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1a

    :cond_6f
    const/16 v68, 0x1

    :cond_70
    if-nez v68, :cond_71

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-eq v0, v4, :cond_72

    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v11, v17

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v11, v17

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    if-eqz v25, :cond_72

    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_2a
    if-ge v4, v10, :cond_72

    aget-object v24, v25, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v11, v12, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_72
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    :cond_73
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v71, v0

    if-eqz v71, :cond_75

    invoke-virtual/range {v71 .. v71}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    if-nez v45, :cond_74

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v71 .. v71}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v10

    if-eq v4, v10, :cond_7d

    :cond_74
    :goto_2c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    :cond_75
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_76

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_4d

    :cond_76
    and-int/lit8 v4, v63, 0x1

    if-eqz v4, :cond_7e

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v39

    if-nez v39, :cond_77

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v4, v10, :cond_7f

    :cond_77
    :goto_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v78

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    const/16 v54, 0x0

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_78

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v78

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v78, v78, v4

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v78

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/16 v54, 0x1

    :cond_78
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_79

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v44

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v44, v44, v4

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v44

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/16 v54, 0x1

    :cond_79
    if-eqz v54, :cond_7a

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    :cond_7a
    const/16 v53, 0x1

    goto/16 :goto_1c

    :cond_7b
    if-eqz v42, :cond_73

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v10, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_7c

    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    :goto_2f
    if-ge v4, v10, :cond_7c

    aget-object v24, v25, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_7c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_2b

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_7d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v71 .. v71}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v10

    if-ne v4, v10, :cond_74

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v4, :cond_75

    goto/16 :goto_2c

    :cond_7e
    const/4 v4, 0x0

    goto/16 :goto_2d

    :cond_7f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_77

    if-nez v33, :cond_77

    if-eqz v73, :cond_4d

    goto/16 :goto_2e

    :cond_80
    const/16 v34, 0x1

    goto/16 :goto_1d

    :cond_81
    const/16 v34, 0x0

    goto/16 :goto_1d

    :cond_82
    const/16 v72, 0x1

    goto/16 :goto_1e

    :cond_83
    move-object/from16 v0, v48

    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v48

    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v48

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    goto/16 :goto_20

    :cond_84
    const/16 v27, 0x0

    goto/16 :goto_22

    :cond_85
    const/16 v43, 0x0

    goto/16 :goto_23

    :cond_86
    const/16 v62, 0x0

    goto/16 :goto_24

    :cond_87
    if-nez v43, :cond_57

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v4, :cond_57

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto/16 :goto_25

    :cond_88
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7d5

    if-ne v4, v10, :cond_89

    const/16 v51, 0x1

    goto/16 :goto_26

    :cond_89
    const/16 v51, 0x0

    goto/16 :goto_26

    :cond_8a
    and-int/lit8 v4, v65, 0x8

    if-eqz v4, :cond_8c

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v4, v10, :cond_8b

    const/4 v4, 0x1

    goto/16 :goto_27

    :cond_8b
    const/4 v4, 0x0

    goto/16 :goto_27

    :cond_8c
    const/4 v4, 0x0

    goto/16 :goto_27

    :cond_8d
    const/16 v26, 0x1

    goto/16 :goto_28

    :cond_8e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_8f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    :cond_90
    :goto_30
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    return-void

    :cond_91
    if-eqz v52, :cond_92

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_30

    :cond_92
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_90

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_90

    const/16 v46, 0x0

    :goto_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v46

    if-ge v0, v4, :cond_93

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    add-int/lit8 v46, v46, 0x1

    goto :goto_31

    :cond_93
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_30

    :catch_3
    move-exception v37

    goto/16 :goto_21

    :catch_4
    move-exception v37

    goto/16 :goto_1f
.end method

.method private postDrawFinished()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    return-void
.end method

.method private processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    :cond_1
    return v4

    :cond_2
    return v3
.end method

.method private profileRendering(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewRootImpl$5;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v19, v0

    const/16 v21, 0x0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_4

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;Landroid/graphics/PointF;)I

    move-result v20

    and-int/lit8 v1, v20, 0x40

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    if-eqz v21, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/SurfaceView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/SurfaceView;->forceDestroySurfaceControl()V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_7
    return v20
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reportDrawFinished()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reportNextDraw()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->drawPending()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private semCreateMWBG()V
    .locals 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BG - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "MultiWindowBackground creation failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private semDestroyMWBG()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    :cond_0
    return-void
.end method

.method static semIsInMouseStylusMode()Z
    .locals 4

    const/4 v3, 0x0

    sget-boolean v2, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowSession;->semGetInMouseStylusMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_1
    return v3
.end method

.method private semUpdateMWBG()V
    .locals 4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Cannot control background surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method private sendUserActionEvent()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    const-string/jumbo v6, "ViewRootImpl"

    const-string/jumbo v7, "sendUserActionEvent() returned."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "0"

    const-string/jumbo v6, "gsm.sim.userEvent"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_1

    aget-object v6, v5, v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    aget-object v3, v5, v7

    :cond_1
    array-length v6, v5

    if-ge v8, v6, :cond_2

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    aget-object v4, v5, v8

    :cond_2
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.internal.stk.event"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "STK EVENT"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method private setSTS(Landroid/content/pm/PackageInfo;)V
    .locals 2

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->stsOption:D

    sput-wide v0, Landroid/view/ViewRootImpl;->sSTSOption:D

    return-void
.end method

.method private setTag()V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewRootImpl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$W;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowCallbacks;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_1
    return-void
.end method

.method private trackFPS()V
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v2, v4, v8

    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v4, v8

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    :goto_1
    or-int/2addr v2, v1

    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "updatePointerIcon called after view was removed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    cmpg-float v6, v4, v9

    if-ltz v6, :cond_1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_2

    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "updatePointerIcon called with position out of bounds"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    cmpg-float v6, v5, v9

    if-ltz v6, :cond_1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-gez v6, :cond_1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1, v8}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    move-result v2

    :goto_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_3

    sget-boolean v6, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    if-eqz v6, :cond_5

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_5

    const/16 v2, 0x2789

    :cond_3
    :goto_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v6, v2, :cond_7

    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    iget v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v6, v10, :cond_7

    iget v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/16 v7, 0x4e20

    if-eq v6, v7, :cond_7

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePointerIcon pointerType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", calling pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return v11

    :cond_4
    const/16 v2, 0x3e8

    goto :goto_0

    :cond_5
    sget-boolean v6, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    if-nez v6, :cond_6

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_6

    const/16 v2, 0x4e21

    goto :goto_1

    :cond_6
    sget-boolean v6, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    if-nez v6, :cond_3

    const/16 v6, 0x2789

    if-ne v2, v6, :cond_3

    const/16 v2, 0x3e8

    goto :goto_1

    :cond_7
    iget v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v6, v10, :cond_8

    iget v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/16 v7, 0x4e20

    if-ne v6, v7, :cond_9

    :cond_8
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v0, v6}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    const-string/jumbo v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePointerIcon Custom PointerIcon = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", calling pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v6, v7}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    :cond_9
    return v11
.end method


# virtual methods
.method synthetic -android_view_ViewRootImpl-mthref-0()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->postDrawFinished()V

    return-void
.end method

.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string/jumbo v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public debug()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mThreadedRenderer.destroy()#1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    const/16 v1, 0xd

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_2
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    invoke-virtual {p0, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "There is possible to occur CalledFromWrongThreadException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    :cond_6
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    :cond_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v1, 0x10

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v1, 0xf

    goto :goto_0
.end method

.method public dispatchFinishMovingTask()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 4

    const/16 v3, 0x1c

    const/16 v1, 0x1c

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4

    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    :cond_1
    return-void
.end method

.method doDie()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    :cond_2
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v4, v1, :cond_7

    const/4 v2, 0x1

    :goto_1
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    :try_start_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v5}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v6, :cond_6

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x63

    if-gt v4, v5, :cond_6

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/WindowManagerGlobal;->setChildWindowStopped(Landroid/os/IBinder;)V

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v6, :cond_0

    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_0
    iput-object v10, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v7, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v8, 0x4

    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    move-wide v4, v0

    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v6, :cond_3

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    :cond_1
    return-void
.end method

.method drawPending()V
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAmbientMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v4, 0x4

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    :goto_1
    return-void

    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getCurrentDirectPenInputView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    return-object v0
.end method

.method public getDexCompatTranslator()Lcom/samsung/android/desktopmode/DexCompatTranslator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 3

    const/16 v1, 0x8

    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTranslatedPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_3

    iget v0, v7, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_6

    :cond_3
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-direct {v6, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v6

    :cond_4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0

    :cond_6
    iget v0, v7, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_3

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_4

    goto :goto_0
.end method

.method handleAppVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4

    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v2, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    :cond_0
    const-string/jumbo v3, "shortcuts_array"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method hasPointerCapture()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method invalidate()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isReversedFrame()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFrameReversedForFixedOrientation:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public loadSystemProperties()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$6;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_1
    return-void

    :cond_2
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    goto :goto_0
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowTitleChanged()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    :cond_0
    return-void
.end method

.method pendingDrawFinished()V
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unbalanced drawPending/pendingDrawFinished calls"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportDrawFinished()V

    :cond_1
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public playSoundEffect(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public profile()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportActivityRelaunched()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, v2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    return-void
.end method

.method public requestLayout()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayoutDuringLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method requestPointerCapture(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    return v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_0
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v8, 0x1

    return v8

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method resetSoftwareCaches(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_1

    :cond_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    return v10

    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-gt v7, v8, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_0

    :cond_2
    :goto_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v5, v7, :cond_5

    if-nez p2, :cond_f

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v7, :cond_3

    new-instance v7, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    :cond_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v5, v9

    invoke-virtual {v7, v10, v8, v10, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    :cond_4
    :goto_1
    iput v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_5
    return v3

    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :goto_2
    if-eq v2, v4, :cond_7

    const/4 p1, 0x0

    :cond_7
    if-ne v2, v4, :cond_8

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    if-eqz p1, :cond_2

    :cond_8
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez p1, :cond_b

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_c

    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "offsetDescendantRectToMyCoords() error occurred. focus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mTempRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_b
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_c
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v8

    goto :goto_4

    :cond_d
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_e

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int v5, v7, v8

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    :cond_f
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1
.end method

.method semDecreaseChildWindow()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDecreaseChildWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method semEnsureMouseStylusMode(Z)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-ne v1, p1, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->semSetInMouseStylusMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v1, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method semIncreaseChildWindow()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mIncreaseChildWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method semIsInMultiWindowMode()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method semIsShownMWBG()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method semRequestMWBG()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->semIsTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    :cond_0
    return-void
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    const/16 v7, 0x40

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_3
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method public setCurrentDirectPenInputView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v4, p1, :cond_2

    sget-boolean v4, Landroid/view/View;->sCascadedDragDrop:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget v2, p2, Landroid/view/DragEvent;->mX:F

    iget v3, p2, Landroid/view/DragEvent;->mY:F

    iget v0, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v1, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput v6, p2, Landroid/view/DragEvent;->mX:F

    iput v6, p2, Landroid/view/DragEvent;->mY:F

    iput-object v5, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_1
    iput v0, p2, Landroid/view/DragEvent;->mAction:I

    iput v2, p2, Landroid/view/DragEvent;->mX:F

    iput v3, p2, Landroid/view/DragEvent;->mY:F

    iput-object v1, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    return-void
.end method

.method public setForcePerformDraw(Z)V
    .locals 3

    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcePerformDraw():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v7, 0x80

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const v8, 0x88000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    :cond_3
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_4

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0xf1

    and-int/lit16 v9, v6, 0xf0

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v3, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-eq v7, v5, :cond_8

    :cond_7
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_8
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v4, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v7, v2, :cond_3

    goto :goto_1
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    return-void
.end method

.method public setReportNextDraw()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public setTspDeadzone(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The view is not attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowSession;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 26

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->setSTS(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mMWBGParentDecorView:Landroid/view/View;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8fd

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.anim"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    iput v4, v3, Landroid/view/View$AttachInfo;->mDisplayState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_3

    new-instance v3, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_3
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->semHasExtentionFlags(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    const/16 v23, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    invoke-virtual {v13}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :cond_7
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_d

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    iput v3, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz p3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v3 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v22

    if-eqz v23, :cond_a

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v3, v22, 0x4

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    if-gez v22, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    packed-switch v22, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- unknown error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v15

    :try_start_5
    sget-boolean v3, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SRIB_DBQ_DCS_DSS_STSViewRootImpl"

    const-string/jumbo v4, "setView: Name not found exception caught"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v16

    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "Failed mWindowSession.addToDisplay() mView = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Adding window failed"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v23, :cond_f

    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_f
    throw v3

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_4

    :pswitch_0
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not valid; is your activity running?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not for an application"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- app for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is exiting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window -- window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has already been added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :pswitch_4
    monitor-exit p0

    return-void

    :pswitch_5
    :try_start_8
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- another window of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_6
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- permission denied for window type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- the specified display can not be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_8
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to add window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- the specified window type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_12

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v3, :cond_13

    new-instance v3, Landroid/view/InputQueue;

    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v3, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_13
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    :cond_14
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v3, v22, 0x1

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    and-int/lit8 v3, v22, 0x2

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/ViewRootImpl;->semIsInMouseStylusMode()Z

    move-result v4

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " TM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v3, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v24, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:native-post-ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    new-instance v25, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:native-pre-ime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aq:pending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_18
    monitor-exit p0

    return-void

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 3

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v2, p1, :cond_3

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v1, v2}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$WindowStoppedCallback;

    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$WindowStoppedCallback;->windowStopped(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public touchFocusTransferred()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateConfiguration(I)V
    .locals 9

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_1
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v6, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v6, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eq v4, v1, :cond_3

    iget v6, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_4
    return-void

    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDisplay is null #2, kept old Dispaly, mDisplay.getDisplayId() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updatePointerIcon(FF)V
    .locals 12

    const/16 v11, 0x1b

    const/16 v10, 0x1b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    const/4 v4, 0x7

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v11, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
