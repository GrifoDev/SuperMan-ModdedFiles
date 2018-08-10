.class Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;
.super Lcom/android/server/desktopmode/StateNotifier$ListenerInfo;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeListenerInfo"
.end annotation


# instance fields
.field final listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

.field final synthetic this$0:Lcom/android/server/desktopmode/StateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/StateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/StateNotifier;

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/desktopmode/StateNotifier$ListenerInfo;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/desktopmode/StateNotifier$ListenerInfo;->binderDied()V

    iget-object v0, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/StateNotifier;

    invoke-static {v0}, Lcom/android/server/desktopmode/StateNotifier;->-get1(Lcom/android/server/desktopmode/StateNotifier;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->this$0:Lcom/android/server/desktopmode/StateNotifier;

    invoke-static {v0}, Lcom/android/server/desktopmode/StateNotifier;->-get1(Lcom/android/server/desktopmode/StateNotifier;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
