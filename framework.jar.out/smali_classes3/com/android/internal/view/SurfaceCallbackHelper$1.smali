.class Lcom/android/internal/view/SurfaceCallbackHelper$1;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/SurfaceCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/SurfaceCallbackHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v0, v0, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v2, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v0, v0, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
