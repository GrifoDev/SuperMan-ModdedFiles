.class Lcom/android/server/wm/RemoteSurfaceTrace;
.super Landroid/view/SurfaceControl;
.source "RemoteSurfaceTrace.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteSurfaceTrace"


# instance fields
.field final mOut:Ljava/io/DataOutputStream;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindow:Lcom/android/server/wm/WindowState;

.field final mWriteFd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;)V

    iput-object p1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWriteFd:Ljava/io/FileDescriptor;

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iput-object p3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private writeEvent(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_0
.end method

.method private varargs writeFloatEvent(Ljava/lang/String;[F)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    iget-object v4, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_1
.end method

.method private varargs writeIntEvent(Ljava/lang/String;[I)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    iget-object v4, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_1
.end method

.method private writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    return-void
.end method

.method private writeSigil()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RemoteSurfaceTrace;->mOut:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/android/server/wm/RemoteEventTrace;->sigil:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const-string/jumbo v0, "Hide"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    const-string/jumbo v0, "Alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1

    const-string/jumbo v0, "FinalCrop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setGeometryAppliesWithResize()V
    .locals 1

    const-string/jumbo v0, "GeometryAppliesWithResize"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    return-void
.end method

.method public setLayer(I)V
    .locals 3

    const-string/jumbo v0, "Layer"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method public setLayerStack(I)V
    .locals 3

    const-string/jumbo v0, "LayerStack"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 3

    const-string/jumbo v0, "Matrix"

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 3

    const-string/jumbo v0, "Position"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeFloatEvent(Ljava/lang/String;[F)V

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public setSize(II)V
    .locals 3

    const-string/jumbo v0, "Size"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeIntEvent(Ljava/lang/String;[I)V

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1

    const-string/jumbo v0, "Crop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeRectEvent(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .locals 1

    const-string/jumbo v0, "Show"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteSurfaceTrace;->writeEvent(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    return-void
.end method
