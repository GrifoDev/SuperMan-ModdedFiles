.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;,
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mIsCreating:Z

.field private mIsFixedOrientation:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private mRequestedX:I

.field private mRequestedY:I

.field mResolutionOverride:Landroid/util/ResolutionOverride;

.field private volatile mRtHandlingPositionUpdates:Z

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTargetHeight:I

.field mTargetWidth:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field private mWindowInsetLeft:I

.field private mWindowInsetTop:I

.field mWindowSpaceHeight:I

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowSpaceWidth:I

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 209
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 141
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 158
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 167
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 166
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 178
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 191
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 192
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 194
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 195
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 196
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 927
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1096
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1097
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1099
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1100
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1101
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 210
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 214
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 141
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 158
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 167
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 166
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 178
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 191
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 192
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 194
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 195
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 196
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 927
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1096
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1097
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1099
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1100
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1101
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 215
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 141
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 158
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 167
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 166
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 178
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 191
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 192
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 194
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 195
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 196
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 927
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1096
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1097
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1099
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1100
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1101
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 220
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 141
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 158
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 167
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 166
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 178
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 191
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 192
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 194
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 195
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 196
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 927
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1096
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1097
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1099
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1100
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1101
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 225
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 223
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 841
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 843
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 845
    return-object v0

    .line 841
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 230
    new-instance v0, Landroid/util/ResolutionOverride;

    invoke-direct {v0, p0}, Landroid/util/ResolutionOverride;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 231
    iget-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    invoke-virtual {v0, p0}, Landroid/util/ResolutionOverride;->setFixedSize(Landroid/view/SurfaceView;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 385
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 387
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 389
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 384
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    invoke-virtual {v0, p0, p1}, Landroid/util/ResolutionOverride;->handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 373
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 375
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 380
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v4, 0x0

    .line 346
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 347
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 350
    :cond_0
    const/4 v7, 0x1

    .line 351
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 353
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 365
    .end local v7    # "opaque":Z
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const/4 v7, 0x0

    .line 368
    :cond_2
    return v7

    .line 354
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 356
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 357
    .local v6, "h":I
    if-lez v8, :cond_1

    if-lez v6, :cond_1

    .line 358
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 360
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v4

    .line 361
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 362
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 848
    return-void
.end method

.method public isFixedSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 860
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 247
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 249
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 250
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SurfaceView - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 253
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 255
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 256
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 257
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 245
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 289
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 291
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 292
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 293
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 296
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 297
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 298
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 299
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v2, :cond_1

    .line 301
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    iput-object v4, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 307
    :cond_1
    iput-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 308
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 310
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 288
    return-void

    .line 302
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 315
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    .line 316
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 318
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 319
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 321
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 314
    return-void

    .line 317
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 320
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 264
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 265
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 266
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 262
    return-void

    :cond_0
    move v0, v1

    .line 264
    goto :goto_0

    :cond_1
    move v0, v1

    .line 265
    goto :goto_1
.end method

.method public semSetFixedOrientation(I)V
    .locals 4
    .param p1, "samsungFlagFixedOrientation"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1113
    if-eqz p1, :cond_2

    .line 1114
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1115
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1117
    iget-object v2, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 1118
    .local v1, "wm":Landroid/view/WindowManagerImpl;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1119
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1120
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1121
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1122
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1111
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 1123
    .restart local v0    # "di":Landroid/view/DisplayInfo;
    .restart local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 1124
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1125
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    goto :goto_0

    .line 1128
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_2
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1129
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 1130
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1131
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1132
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1133
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1134
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1135
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0xd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_0
.end method

.method public semSetFixedOrientation(IIIII)V
    .locals 8
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    .line 1160
    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceView;->semSetFixedOrientation(IIIIIII)V

    .line 1155
    return-void
.end method

.method public semSetFixedOrientation(IIIIIII)V
    .locals 2
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sourceWidth"    # I
    .param p5, "sourceHeight"    # I
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1190
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1191
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 1192
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1193
    iput p5, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1194
    iput p6, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1195
    iput p7, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1180
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 340
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 341
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 448
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 273
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 274
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 283
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 284
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 270
    return-void

    :cond_1
    move v1, v2

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    const/4 v0, 0x0

    .local v0, "newRequestedVisible":Z
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 462
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 461
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 407
    if-eqz p1, :cond_0

    .line 408
    const/16 v0, 0x3ec

    .line 407
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 406
    return-void

    .line 409
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 429
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 425
    :goto_0
    return-void

    .line 431
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 432
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 43
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v4, :cond_0

    .line 468
    return-void

    .line 470
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v40

    .line 471
    .local v40, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v40, :cond_1

    .line 472
    move-object/from16 v0, v40

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 479
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v31, v0

    .line 480
    .local v31, "myWidth":I
    if-gtz v31, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v31

    .line 481
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v30, v0

    .line 482
    .local v30, "myHeight":I
    if-gtz v30, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v30

    .line 484
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_d

    const/16 v25, 0x1

    .line 485
    .local v25, "creating":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v4, v5, :cond_e

    const/16 v28, 0x1

    .line 486
    .local v28, "formatChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    move/from16 v0, v31

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    move/from16 v0, v30

    if-eq v4, v0, :cond_f

    :cond_5
    const/16 v36, 0x1

    .line 487
    .local v36, "sizeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v4, v5, :cond_10

    const/16 v42, 0x1

    .line 488
    .local v42, "visibleChanged":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v5, :cond_11

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v5, :cond_12

    const/16 v29, 0x1

    .line 491
    .local v29, "layoutSizeChanged":Z
    :goto_4
    if-nez p1, :cond_6

    if-nez v25, :cond_6

    if-nez v28, :cond_6

    if-nez v36, :cond_6

    if-nez v42, :cond_6

    .line 492
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 491
    if-nez v4, :cond_6

    .line 492
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 491
    if-nez v4, :cond_6

    if-eqz p2, :cond_2a

    .line 493
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 503
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 504
    .local v41, "visible":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 506
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    .line 507
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 508
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 517
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    if-eqz v4, :cond_15

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedX:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedY:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 521
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTargetWidth:I

    if-lez v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTargetHeight:I

    if-lez v4, :cond_13

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mTargetWidth:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mTargetHeight:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 534
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_7

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 538
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x4218

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 546
    if-nez v25, :cond_8

    if-eqz p1, :cond_16

    .line 550
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x2001

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 554
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v6, 0x10040

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_a

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v26

    .line 563
    .local v26, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 567
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v8, :cond_17

    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 568
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 566
    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 576
    .end local v26    # "display":Landroid/view/Display;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v35, v0

    .line 580
    .local v35, "reportDrawNeeded":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 581
    if-eqz v41, :cond_18

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 587
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    .line 588
    if-eqz v41, :cond_19

    const/4 v10, 0x0

    .line 590
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    .line 589
    const/4 v11, 0x2

    .line 586
    invoke-interface/range {v4 .. v21}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;)I

    move-result v34

    .line 593
    .local v34, "relayoutResult":I
    and-int/lit8 v4, v34, 0x2

    if-eqz v4, :cond_b

    .line 594
    const/16 v35, 0x1

    .line 601
    .end local v35    # "reportDrawNeeded":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_1a

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 612
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v39, v0

    .line 613
    .local v39, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    .line 614
    .local v38, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v39

    if-ne v4, v0, :cond_1b

    .line 615
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v38

    if-eq v4, v0, :cond_1c

    const/16 v33, 0x1

    .line 616
    .local v33, "realSizeChanged":Z
    :goto_b
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 617
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 623
    or-int v4, v25, v35

    or-int p2, p2, v4

    .line 625
    const/16 v24, 0x0

    .line 627
    .local v24, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v4, v34, 0x4

    if-eqz v4, :cond_1d

    const/16 v37, 0x1

    .line 629
    .local v37, "surfaceChanged":Z
    :goto_c
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v4, :cond_1e

    if-nez v37, :cond_c

    if-nez v41, :cond_1e

    if-eqz v42, :cond_1e

    .line 630
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 634
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v24

    .line 635
    .local v24, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    :goto_d
    if-ge v4, v5, :cond_1e

    aget-object v23, v24, v4

    .line 636
    .local v23, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 635
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 484
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "creating":Z
    .end local v28    # "formatChanged":Z
    .end local v29    # "layoutSizeChanged":Z
    .end local v33    # "realSizeChanged":Z
    .end local v34    # "relayoutResult":I
    .end local v36    # "sizeChanged":Z
    .end local v37    # "surfaceChanged":Z
    .end local v38    # "surfaceHeight":I
    .end local v39    # "surfaceWidth":I
    .end local v41    # "visible":Z
    .end local v42    # "visibleChanged":Z
    :cond_d
    const/16 v25, 0x0

    .restart local v25    # "creating":Z
    goto/16 :goto_0

    .line 485
    :cond_e
    const/16 v28, 0x0

    .restart local v28    # "formatChanged":Z
    goto/16 :goto_1

    .line 486
    :cond_f
    const/16 v36, 0x0

    .restart local v36    # "sizeChanged":Z
    goto/16 :goto_2

    .line 487
    :cond_10
    const/16 v42, 0x0

    .restart local v42    # "visibleChanged":Z
    goto/16 :goto_3

    .line 488
    :cond_11
    const/16 v29, 0x1

    .restart local v29    # "layoutSizeChanged":Z
    goto/16 :goto_4

    .line 489
    .end local v29    # "layoutSizeChanged":Z
    :cond_12
    const/16 v29, 0x0

    .restart local v29    # "layoutSizeChanged":Z
    goto/16 :goto_4

    .line 525
    .restart local v41    # "visible":Z
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v31

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v30

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 690
    .end local v41    # "visible":Z
    :catch_0
    move-exception v27

    .line 691
    .local v27, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    const-string/jumbo v5, "Exception from relayout"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v27    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_e
    return-void

    .line 529
    .restart local v41    # "visible":Z
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_5

    .line 546
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    if-nez v4, :cond_8

    if-nez v36, :cond_8

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    .line 567
    .restart local v26    # "display":Landroid/view/Display;
    :cond_17
    const/16 v8, 0x8

    goto/16 :goto_7

    .line 581
    .end local v26    # "display":Landroid/view/Display;
    .restart local v35    # "reportDrawNeeded":Z
    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 588
    :cond_19
    const/16 v10, 0x8

    goto/16 :goto_9

    .line 607
    .end local v35    # "reportDrawNeeded":Z
    .restart local v34    # "relayoutResult":I
    :cond_1a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v22, v0

    .line 608
    .local v22, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v22

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v22

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 618
    .end local v22    # "appInvertedScale":F
    .end local v34    # "relayoutResult":I
    :catchall_0
    move-exception v4

    .line 619
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 618
    throw v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 614
    .restart local v34    # "relayoutResult":I
    .restart local v38    # "surfaceHeight":I
    .restart local v39    # "surfaceWidth":I
    :cond_1b
    const/16 v33, 0x1

    .restart local v33    # "realSizeChanged":Z
    goto/16 :goto_b

    .line 615
    .end local v33    # "realSizeChanged":Z
    :cond_1c
    const/16 v33, 0x0

    .restart local v33    # "realSizeChanged":Z
    goto/16 :goto_b

    .line 627
    .local v24, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1d
    const/16 v37, 0x0

    .restart local v37    # "surfaceChanged":Z
    goto/16 :goto_c

    .line 641
    .end local v24    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 642
    if-eqz v41, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 643
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v4, :cond_21

    if-nez v37, :cond_1f

    if-eqz v42, :cond_21

    .line 644
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 645
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 648
    if-nez v24, :cond_20

    .line 649
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v24

    .line 651
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    :goto_f
    if-ge v4, v5, :cond_21

    aget-object v23, v24, v4

    .line 652
    .restart local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 651
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 655
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_21
    if-nez v25, :cond_22

    if-nez v28, :cond_22

    if-nez v36, :cond_22

    if-nez v42, :cond_22

    if-eqz v33, :cond_24

    .line 660
    :cond_22
    if-nez v24, :cond_23

    .line 661
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v24

    .line 663
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    :goto_10
    if-ge v4, v5, :cond_24

    aget-object v23, v24, v4

    .line 664
    .restart local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-interface {v0, v6, v7, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 667
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_24
    if-eqz p2, :cond_27

    .line 670
    if-nez v24, :cond_25

    .line 671
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v24

    .line 673
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    :goto_11
    if-ge v4, v5, :cond_27

    aget-object v23, v24, v4

    .line 674
    .restart local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    instance-of v6, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_26

    .line 675
    check-cast v23, Landroid/view/SurfaceHolder$Callback2;

    .line 676
    .end local v23    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 675
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 673
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 682
    :cond_27
    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 683
    if-eqz p2, :cond_28

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 688
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    goto/16 :goto_e

    .line 681
    :catchall_1
    move-exception v4

    .line 682
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 683
    if-eqz p2, :cond_29

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 688
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 681
    throw v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 700
    .end local v33    # "realSizeChanged":Z
    .end local v34    # "relayoutResult":I
    .end local v37    # "surfaceChanged":Z
    .end local v38    # "surfaceHeight":I
    .end local v39    # "surfaceWidth":I
    .end local v41    # "visible":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 701
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v4, v5, :cond_2e

    .line 702
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_2f

    const/16 v32, 0x1

    .line 703
    .local v32, "positionChanged":Z
    :goto_12
    if-nez v32, :cond_2b

    if-eqz v29, :cond_14

    .line 704
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 714
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 713
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2c

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 720
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v4, :cond_14

    .line 726
    :cond_2d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 727
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 726
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_e

    .line 728
    :catch_1
    move-exception v27

    .line 729
    .restart local v27    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    const-string/jumbo v5, "Exception from relayout"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 701
    .end local v27    # "ex":Landroid/os/RemoteException;
    .end local v32    # "positionChanged":Z
    :cond_2e
    const/16 v32, 0x1

    .restart local v32    # "positionChanged":Z
    goto/16 :goto_12

    .line 702
    .end local v32    # "positionChanged":Z
    :cond_2f
    const/16 v32, 0x0

    .restart local v32    # "positionChanged":Z
    goto/16 :goto_12
.end method

.method public final updateWindowPositionRT(JIIII)V
    .locals 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 744
    iget-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 745
    .local v4, "session":Landroid/view/IWindowSession;
    iget-object v5, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 746
    .local v5, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 748
    :cond_0
    return-void

    .line 758
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 759
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    .line 760
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    if-ne v6, v0, :cond_2

    .line 761
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move/from16 v0, p5

    if-ne v6, v0, :cond_2

    .line 762
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p6

    if-ne v6, v0, :cond_2

    .line 763
    return-void

    .line 774
    :cond_2
    :try_start_0
    iget-object v12, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p1

    .line 772
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    .line 776
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v13

    .line 778
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SurfaceView"

    const-string/jumbo v7, "Exception from repositionChild"

    invoke-static {v6, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final windowPositionLostRT(J)V
    .locals 11
    .param p1, "frameNumber"    # J

    .prologue
    const/4 v3, 0x0

    .line 792
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 793
    .local v0, "session":Landroid/view/IWindowSession;
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 794
    .local v1, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 796
    :cond_0
    return-void

    .line 798
    :cond_1
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v2, :cond_3

    .line 799
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 804
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 835
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 787
    :cond_3
    return-void

    .line 810
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 812
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 813
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 814
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 815
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 816
    iget-object v2, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    .line 818
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget v4, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v5, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 820
    iget-object v2, p0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_5

    .line 821
    iget-object v2, p0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 829
    :cond_5
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 830
    iget-object v4, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-wide v6, p1

    .line 829
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v9

    .line 832
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception from relayout"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
