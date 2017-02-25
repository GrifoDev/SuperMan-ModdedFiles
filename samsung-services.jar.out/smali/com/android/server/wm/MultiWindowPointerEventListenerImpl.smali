.class public Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListenerImpl.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1

.field private static final TOAST_UNRESIZABLE_TASK:I = 0x1


# instance fields
.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .locals 12

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isRecentsVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: recents is visible."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x8b2

    if-ne v7, v9, :cond_3

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7e7

    if-ne v7, v9, :cond_4

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: window type is a daydream."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(II)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_d

    iget-object v7, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_d

    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    iget-object v7, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_7
    :try_start_6
    invoke-virtual {v2, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v7, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_9

    iget-object v7, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_8

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_a

    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: failed, docked task is adjusted by ime, t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    :try_start_7
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenHeight:I

    if-le v7, v9, :cond_b

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenHeight:I

    add-int/2addr v7, v9

    iput v7, p3, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget v7, v2, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v9, v2, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v7, v9}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->updateMinimalSize(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v7, 0x1

    monitor-exit v8

    return v7

    :cond_b
    :try_start_8
    iget v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenWidth:I

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p3, v10, v11, v7, v9}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_c
    :try_start_9
    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    monitor-exit v8

    const/4 v7, 0x0

    return v7
.end method

.method private reset()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    return-void
.end method

.method private showToast(I)V
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateMinimalSize(II)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    :goto_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MultiWindowGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "Resizing multiwindow is canceled by lock task mode"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v7, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenHeight:I

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->reset()V

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_6

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: not effective angle, failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    if-nez v7, :cond_8

    if-eqz v3, :cond_3

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: failed, task is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->showToast(I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_a
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->showToast(I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_f

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v2

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v7, v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    invoke-static {v7, v2, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    :cond_d
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    goto :goto_1

    :cond_f
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :pswitch_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    if-eqz v7, :cond_11

    :cond_10
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->reset()V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_12
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;-><init>(IILandroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
