.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
    }
.end annotation


# static fields
.field private static final MSG_EDGE_LIGHTING_STARTED:I = 0x1

.field private static final MSG_EDGE_LIGHTING_STOPPED:I = 0x2


# instance fields
.field private final component:Landroid/content/ComponentName;

.field private isEdgeLighting:Z

.field private mHandler:Landroid/os/Handler;

.field private final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

.field private final token:Landroid/os/IBinder;

.field private final uid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStarted()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStopped()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    iput p5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EdgeLightingListener : linkToDeath error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _onEdgeLightingStarted()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onEdgeLightingStarted : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onEdgeLightingStopped()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onEdgeLightingStopped : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEdgeLightingStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStarted : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onEdgeLightingStopped()V
    .locals 2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStopped : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  [Listener: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
