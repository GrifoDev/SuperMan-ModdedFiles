.class Lcom/samsung/android/server/virtualspace/VSScreen;
.super Lcom/samsung/android/multiscreen/virtualspace/IVSScreen$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSScreen$-void__init__com_samsung_android_server_virtualspace_VSSession_session_int_width_int_height_int_density_int_flags_LambdaImpl0;,
        Lcom/samsung/android/server/virtualspace/VSScreen$-void_setRotation_int_rotation_LambdaImpl0;,
        Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;,
        Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;
    }
.end annotation


# static fields
.field private static final MSG_APP_ORIENTATION_CHANGED:I = 0xb

.field private static final MSG_BOUNDS_CHANGED:I = 0x7

.field private static final MSG_CLOSED:I = 0xa

.field private static final MSG_HAS_CONTENT_CHANGED:I = 0x4

.field private static final MSG_LOST:I = 0x5

.field private static final MSG_ORIENTATION_CHANGED:I = 0x3

.field private static final MSG_READY:I = 0x9

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerCount:I

.field private static final sPointerLock:Ljava/lang/Object;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mAppOrientation:I

.field private mBounds:Landroid/graphics/Rect;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/app/IActivityContainer;

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private final mFlags:I

.field private mHasContent:Z

.field private mHeight:I

.field private mId:I

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManager;

.field private mOrientation:I

.field private mPriority:I

.field private mReady:Z

.field private volatile mRotation:I

.field private final mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

.field private final mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSurface:Landroid/view/Surface;

.field private mValid:Z

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/virtualspace/VSScreen;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    return v0
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
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreen$Stub;-><init>()V

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width, height and density must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p4, :cond_0

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getManager()Lcom/samsung/android/server/virtualspace/VSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setValid(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$-void__init__com_samsung_android_server_virtualspace_VSSession_session_int_width_int_height_int_density_int_flags_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/virtualspace/VSScreen$-void__init__com_samsung_android_server_virtualspace_VSSession_session_int_width_int_height_int_density_int_flags_LambdaImpl0;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createScreenTask()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v4, v4, Lcom/samsung/android/server/virtualspace/VSManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v5}, Lcom/samsung/android/server/virtualspace/VSSession;->getParentActivity()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;I)Landroid/app/IActivityContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "Activity container not created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V

    return-void

    :cond_0
    :try_start_1
    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iget v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    const/4 v7, 0x0

    invoke-interface {v0, v7, v4, v5, v6}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    invoke-interface {v0}, Landroid/app/IActivityContainer;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v4, v4, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_1

    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "Display not created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "Couldn\'t create activity container: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->addScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mReady:Z

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v4, p0, v2}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V

    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private final declared-synchronized getContainer()Landroid/app/IActivityContainer;
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    .locals 29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

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

    move-object/from16 v0, p1

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

    packed-switch p2, :pswitch_data_0

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

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :pswitch_0
    move/from16 v24, v27

    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v25, v4, v26

    goto :goto_2

    :pswitch_1
    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v24, v4, v26

    move/from16 v0, p4

    int-to-float v4, v0

    sub-float v25, v4, v27

    goto :goto_2

    :pswitch_2
    move/from16 v0, p4

    int-to-float v4, v0

    sub-float v24, v4, v27

    move/from16 v25, v26

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sget-object v10, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v11, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    monitor-exit v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

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

.method private declared-synchronized setContainer(Landroid/app/IActivityContainer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setValid(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateHasContent(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private updateSurfaceTask()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getContainer()Landroid/app/IActivityContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iget v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method


# virtual methods
.method synthetic -com_samsung_android_server_virtualspace_VSScreen_lambda$1()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->createScreenTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VSManager"

    const-string/jumbo v2, "Exception in createScreenTask:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V

    goto :goto_0
.end method

.method synthetic -com_samsung_android_server_virtualspace_VSScreen_lambda$2(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->setDisplayRotation(IIZ)V

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method synthetic -com_samsung_android_server_virtualspace_VSScreen_lambda$3()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateSurfaceTask()V

    return-void
.end method

.method public clear()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "VSScreen.clear()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/SamsungActivityManagerService;->clearStacks(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public close()V
    .locals 4

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "VSScreen.close()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->setValid(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v2, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)Z
    .locals 10

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-nez v6, :cond_1

    :cond_0
    return v9

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    instance-of v6, p1, Landroid/view/KeyEvent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_2
    :try_start_1
    instance-of v6, p1, Landroid/view/MotionEvent;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    if-eqz v6, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/server/virtualspace/VSScreen;->rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v6, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v6, "VSManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getAppOrientation()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDisplayId()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "Screen.getOrientation()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

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
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "VSManager"

    const-string/jumbo v1, "Screen.getRotation()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public launchActivity(Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VSScreen.launchActivity("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getContainer()Landroid/app/IActivityContainer;

    move-result-object v0

    if-nez v0, :cond_2

    return v6

    :cond_2
    :try_start_0
    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-nez v3, :cond_3

    const/high16 v3, 0x18010000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    return v3

    :cond_3
    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Starting an activity on a non main redirected screen not supported in this implementation"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v2

    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Unexpected exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Activity not found"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method declared-synchronized notifyCallbacks(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifiying callbacks with onReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending callback MSG_ORIENTATION_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onOrientationChanged(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Exception while notifying callbacks:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_2
    :try_start_3
    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending callback MSG_HAS_CONTENT_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Z

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onContentChanged(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;Z)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Sending callback MSG_LOST"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p0}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onLost(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending callback MSG_BOUNDS_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onBoundsChanged(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Sending callback MSG_READY"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p0}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onReady(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;)V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v3, "VSManager"

    const-string/jumbo v4, "Sending callback MSG_CLOSED"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p0}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v3, "VSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending callback MSG_APP_ORIENTATION_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;->onAppOrientationChanged(Lcom/samsung/android/multiscreen/virtualspace/IVSScreen;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

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
    .end packed-switch
.end method

.method onDisplayChanged()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "VSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Orientation changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    :cond_1
    return-void
.end method

.method onDisplayRemoved()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setValid(Z)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    return-void
.end method

.method declared-synchronized onTopTaskUpdated(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSScreen.onTopTaskUpdated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateHasContent(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onUpdatedAppOrientation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Screen.registerCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseFocus()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "VSScreen.releaseFocus()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v3, v3, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setDisplayId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->changeScreenId(Lcom/samsung/android/server/virtualspace/VSScreen;II)V

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/SamsungActivityManagerService;->forwardInput(Landroid/app/IActivityContainer;I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void
.end method

.method public setPriority(I)V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "VSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VSScreen.setPriority("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/SamsungActivityManagerService;->updateOomAdj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRotation(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSScreen.setRotation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setRotation_int_rotation_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setRotation_int_rotation_LambdaImpl0;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSScreen.setSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    new-instance v1, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public takeFocus()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "VSManager"

    const-string/jumbo v3, "VSScreen.takeFocus()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterCallback(Lcom/samsung/android/multiscreen/virtualspace/IVSScreenCallback;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "VSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSScreen.unregisterCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method updateBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    :cond_0
    return-void
.end method
