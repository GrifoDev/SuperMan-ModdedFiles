.class Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericPressEventListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/GenericCoverServiceController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    iput p6, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-static {v0}, Lcom/android/server/cover/GenericCoverServiceController;->-get1(Lcom/android/server/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-static {v0}, Lcom/android/server/cover/GenericCoverServiceController;->-get1(Lcom/android/server/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null listener received onSystemCoverEvent!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
