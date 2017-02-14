.class Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mAppForcedInvisible:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field public mLayer:I

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->this$0:Lcom/android/server/wm/WindowSurfaceController;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    new-instance v1, Landroid/view/SurfaceControl;

    const/high16 v2, 0x20000

    or-int v7, p7, v2

    const/4 v6, -0x1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppWindowToken;->addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v3, "freeform background"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const v7, 0x20004

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, v8, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayer(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    :cond_0
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setOpaque(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    :cond_0
    return-void
.end method

.method updateBackgroundVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0
.end method
