.class public Lcom/android/server/wm/MultiWindowFocusedFrameController;
.super Ljava/lang/Object;
.source "MultiWindowFocusedFrameController.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;


# static fields
.field public static final DEBUG_FOCUSED_FRAME_VISIBILITY:Z = false

.field public static final TAG:Ljava/lang/String; = "MultiWindowFocusedFrameController"


# instance fields
.field mDockResizing:Z

.field private mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field private mFocusedAppZone:I

.field private final mFocusedFrameListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusedFrameRect:Landroid/graphics/Rect;

.field private mFocusedFrameViewWindow:Lcom/android/server/wm/WindowState;

.field private final mLastRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedAppZone:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mLastRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method getFocusedApp()Lcom/android/server/wm/AppWindowToken;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method getFocusedAppDockSide()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    return v0
.end method

.method isDockResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mDockResizing:Z

    return v0
.end method

.method public needToHide()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameViewWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    return v3

    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return v2
.end method

.method notifyFocusedFrameRectChanged(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    :try_start_0
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;->onMultiWindowFocusedFrameRectChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "MultiWindowFocusedFrameController"

    const-string/jumbo v5, "Error delivering focused frame rect changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method notifyFocusedZoneChanged(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;->onMultiWindowFocusedZoneChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "MultiWindowFocusedFrameController"

    const-string/jumbo v5, "Error delivering focused frame zone changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public positionFocusedFrameView(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameViewWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpVisibleRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->notifyFocusedFrameRectChanged(Landroid/graphics/Rect;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->getFocusedAppDockSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->notifyFocusedZoneChanged(I)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->notifyFocusedFrameRectChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDockResizing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mDockResizing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mDockResizing:Z

    :cond_0
    return-void
.end method

.method public setFocusedApp(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->getFocusedAppDockSide()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedAppZone:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedAppZone:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;->notifyFocusedZoneChanged(I)V

    :cond_0
    return-void
.end method

.method public setFocusedFrameViewWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFocusedFrameController;->mFocusedFrameViewWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method
