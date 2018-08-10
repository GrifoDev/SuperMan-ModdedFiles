.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private guardedRun()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v22, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v22, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v22, :cond_1

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v23

    return-void

    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/Runnable;

    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v23

    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v4, 0x1

    :cond_5
    if-eqz v13, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v13, 0x0

    :cond_6
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;

    if-nez v19, :cond_11

    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_b
    if-eqz v8, :cond_c

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v8, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v16, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v6, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v15

    goto/16 :goto_3

    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v22, 0x1

    :try_start_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v5, 0x1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v22

    :try_start_9
    monitor-exit v23

    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v22

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    :try_start_a
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    monitor-exit v23

    throw v22

    :catch_0
    move-exception v18

    :try_start_b
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v18

    :cond_13
    if-eqz v10, :cond_14

    const-string/jumbo v22, "GLSurfaceView"

    const-string/jumbo v24, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    const/4 v10, 0x0

    :cond_14
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    :cond_15
    if-eqz v6, :cond_16

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v22, 0x1

    :try_start_d
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v23

    const/4 v6, 0x0

    :cond_16
    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v11, v0

    const/4 v7, 0x0

    :cond_17
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v19, :cond_18

    :try_start_f
    const-string/jumbo v22, "onSurfaceCreated"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const-wide/16 v22, 0x8

    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_18
    const/4 v5, 0x0

    :cond_19
    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v19, :cond_1a

    :try_start_11
    const-string/jumbo v22, "onSurfaceChanged"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v11, v1, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const-wide/16 v22, 0x8

    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1a
    const/16 v16, 0x0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/opengl/GLSurfaceView;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v19, :cond_1d

    :try_start_13
    const-string/jumbo v22, "onDrawFrame"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v10, :cond_1c

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    const/4 v10, 0x0

    :cond_1c
    const-wide/16 v22, 0x8

    :try_start_14
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    const-string/jumbo v22, "GLThread"

    const-string/jumbo v23, "eglSwapBuffers"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/16 v22, 0x1

    :try_start_15
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    monitor-exit v23

    :goto_5
    :sswitch_0
    if-eqz v21, :cond_0

    const/4 v8, 0x1

    const/16 v21, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    const/16 v22, 0x1

    :try_start_17
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    monitor-exit v23

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit v23

    throw v22

    :catchall_5
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :catchall_6
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :catchall_7
    move-exception v22

    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v22

    :sswitch_1
    const/4 v13, 0x1

    goto :goto_5

    :catchall_8
    move-exception v22

    monitor-exit v23

    throw v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :catchall_9
    move-exception v22

    monitor-exit v23

    throw v22

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public onWindowResize(II)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    return-void
.end method
