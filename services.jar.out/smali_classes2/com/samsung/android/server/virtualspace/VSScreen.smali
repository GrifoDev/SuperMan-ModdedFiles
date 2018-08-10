.class Lcom/samsung/android/server/virtualspace/VSScreen;
.super Lcom/samsung/android/virtualspace/IVSScreen$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;,
        Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    }
.end annotation


# static fields
.field private static final MSG_APP_ORIENTATION_CHANGED:I = 0xb

.field private static final MSG_BOUNDS_CHANGED:I = 0x7

.field private static final MSG_CLOSED:I = 0xa

.field private static final MSG_HAS_CONTENT_CHANGED:I = 0x4

.field private static final MSG_IME_TARGET_CHANGED:I = 0xc

.field private static final MSG_LOST:I = 0x5

.field private static final MSG_ORIENTATION_CHANGED:I = 0x3

.field private static final MSG_READY:I = 0x9

.field private static final MSG_TOP_TASK_UPDATED:I = 0xd

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerCount:I

.field private static final sPointerLock:Ljava/lang/Object;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private final mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/virtualspace/IVSScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPending:Z

.field private mContainer:Landroid/app/IActivityContainer;

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private final mFlags:I

.field private final mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private mNonEmpty:Z

.field private final mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mRealDensity:I

.field private mRealHeight:I

.field private mRealWidth:I

.field private volatile mRotation:I

.field private final mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private final mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private final mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    sput-object v1, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;-><init>()V

    iput v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "HasContent"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "Orientation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "AppOrientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "Bounds"

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x7

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "IMETarget"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "TopTask"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getManager()Lcom/samsung/android/server/virtualspace/VSManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V
    .locals 1

    and-int v0, p1, p2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " | "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method private assertRunOnHandlerThread()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    return-void
.end method

.method private clearComplete()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    return-void
.end method

.method private clearTask()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v0, v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->clearVSDisplay(I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    goto :goto_0
.end method

.method private closeTask()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "FLAG_REDIRECT_MAIN_DISPLAY"

    const/16 v2, 0x10

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string/jumbo v1, "FLAG_CLEAR_MAIN_DISPLAY"

    const/16 v2, 0x20

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string/jumbo v1, "FLAG_ENABLE_HW_COMPOSITION"

    const/16 v2, 0x40

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initTask()V
    .locals 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "initTask"

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->set(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v8, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->addScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v2, 0x5

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_1

    const/16 v2, 0xd

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v8, v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v9}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientActivity()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;

    invoke-direct {v10, p0}, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/am/ActivityManagerService;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;I)Landroid/app/IActivityContainer;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v6, "Activity container not created"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void

    :cond_2
    :try_start_1
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v8}, Lcom/samsung/android/server/virtualspace/VSSession;->getRealMainDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v8, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-eq v8, v9, :cond_6

    :cond_3
    const/4 v4, 0x1

    :goto_2
    sget-boolean v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    const-string/jumbo v8, "creating a display that matches the main display\'s real size: %dx%d dpi:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    const-string/jumbo v8, "... and scaling it as the main display to: %dx%d dpi:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    const/4 v11, 0x0

    invoke-interface {v0, v11, v8, v9, v10}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    invoke-interface {v0}, Landroid/app/IActivityContainer;->getDisplayId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_8

    const-string/jumbo v6, "Display not created"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v6, "Couldn\'t create activity container: "

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_2
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    if-ne v8, v9, :cond_3

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_7
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_9

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iget v11, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iget v12, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateBaseDisplayMetrics(IIII)V

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    const/4 v11, 0x1

    invoke-interface {v8, v9, v10, v11}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDisplayRotation(IIZ)V

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v8, v9, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    if-eqz v3, :cond_a

    const-string/jumbo v8, "debug.vs.non.redirect"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v6, "Forced non redirect mode"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->logi(Ljava/lang/String;)V

    const-string/jumbo v6, "debug.vs.non.redirect.display"

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_c

    :goto_5
    invoke-virtual {v8, p0, v6}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_c
    move v6, v7

    goto :goto_5
.end method

.method private launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v3, :cond_0

    :try_start_0
    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-nez v3, :cond_1

    const/high16 v3, 0x18010000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "vs_launched"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v3, p1}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Activity not found"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed starting activity with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private makeMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VSScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyCallbacks(I)V
    .locals 5

    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_ORIENTATION_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Exception while notifying callbacks:"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_HAS_CONTENT_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto :goto_0

    :pswitch_3
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "sending callback MSG_LOST"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto :goto_0

    :pswitch_4
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_BOUNDS_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "sending callback MSG_READY"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "sending callback MSG_CLOSED"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_APP_ORIENTATION_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    goto/16 :goto_0

    :pswitch_8
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_IME_TARGET_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto/16 :goto_0

    :pswitch_9
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_TOP_TASK_UPDATED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private resendStateTask()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    :cond_0
    return-void
.end method

.method private static rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    .locals 29

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    sget-object v28, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    monitor-enter v28

    :try_start_0
    sget v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    if-le v9, v4, :cond_0

    sput v9, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    new-array v4, v9, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v4, v9, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v0, v9, :cond_0

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v22

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_1

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v21, v4, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v26

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v27

    packed-switch p1, :pswitch_data_0

    move/from16 v24, v26

    move/from16 v25, v27

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :pswitch_0
    move/from16 v24, v27

    move/from16 v0, p2

    int-to-float v4, v0

    sub-float v25, v4, v26

    goto :goto_2

    :pswitch_1
    move/from16 v0, p2

    int-to-float v4, v0

    sub-float v24, v4, v26

    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v25, v4, v27

    goto :goto_2

    :pswitch_2
    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v24, v4, v27

    move/from16 v25, v26

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sget-object v10, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v11, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    monitor-exit v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->recycle()V

    return-object v23

    :catchall_0
    move-exception v4

    monitor-exit v28

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setContainer(Landroid/app/IActivityContainer;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateHasContent(Z)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    goto :goto_0
.end method

.method private updateSurfaceTask(Landroid/view/Surface;)V
    .locals 6

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/Surface;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {p1}, Landroid/view/Surface;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-eq v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setOverrideDisplaySize(III)V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Surface has already been released"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v2, "updateSurfaceTask failed:"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "clear()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "close()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)Z
    .locals 11

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v7, :cond_0

    return v10

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-nez v7, :cond_1

    const-string/jumbo v7, "no container"

    invoke-direct {p0, v7}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;)V

    return v10

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    instance-of v7, p1, Landroid/view/KeyEvent;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_2
    :try_start_1
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_3
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v5, v7}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v7, v8}, Lcom/android/server/wm/IWindowManagerServiceBridge;->ensureFocusedDisplay(I)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-static {v5, v7, v8, v9}, Lcom/samsung/android/server/virtualspace/VSScreen;->rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    :cond_5
    const/4 v6, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v7, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v7, ""

    invoke-direct {p0, v7, v4}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    invoke-static {v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  real size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  surface size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  appOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  hasContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  bounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method finish()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method public getAppOrientation()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "getOrientation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "getRotation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    return v0
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23002(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23248()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23508(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24181()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24341()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24619()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24815()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_25069(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDisplayRotation(IIZ)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_25528(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/virtualspace/VSScreen;->launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_27420(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateSurfaceTask(Landroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_27857(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setPriorityTask(I)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_28216(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectSystemWindows(ILcom/samsung/android/server/virtualspace/VSScreen;Z)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_4399()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->initTask()V

    return-void
.end method

.method public launchActivity(Landroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchActivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v2, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Timed out launching activity"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, v1, Landroid/util/MutableBoolean;->value:Z

    return v2
.end method

.method onAppOrientationUpdated(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onBoundsUpdated(IIII)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ne v2, p3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, p4, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, p1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallbackForce()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method onDisplayChanged()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onDisplayRemoved()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method onIMETargetChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onTopTaskUpdated(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateHasContent(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redirectSystemWindows(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;

    invoke-direct {v0, p2, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;-><init>(ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v1, :cond_1

    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "releaseFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$3;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendState()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "resendState()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$4;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDisplayId(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$10;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$10;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setPriorityTask(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    if-eq v0, p1, :cond_2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->updateOomAdj()V

    :cond_2
    return-void
.end method

.method public setRotation(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$11;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$11;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "takeFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$5;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method
