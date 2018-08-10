.class public Lcom/samsung/android/content/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/content/smartclip/ISpenGestureService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBleSpenAddress()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getBleSpenAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v2
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v1

    invoke-interface {v3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentMissingMethodFlags()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    if-eqz v1, :cond_1

    new-instance v4, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v4, v1, v2}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;I)V

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    return-object v4
.end method

.method public getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v2
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v2
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v2
.end method

.method public injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/view/InputEvent;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/InputEvent;

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v6

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized isServiceAvailable()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "spengestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isSupportBleSpen()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->isSupportBleSpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public notifyKeyboardClosed()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->notifyKeyboardClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBleSpenAddress(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setBleSpenAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setHoverStayDetectEnabled(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayDetectEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setHoverStayValues(III)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setHoverStayValues(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSpenInsertionState(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->setSpenInsertionState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeBleSpenCommand(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/content/smartclip/ISpenGestureService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/ISpenGestureService;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
