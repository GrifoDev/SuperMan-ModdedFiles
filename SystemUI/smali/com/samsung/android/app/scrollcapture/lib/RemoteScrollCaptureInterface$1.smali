.class Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private final synthetic val$connStartTime:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iput-wide p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    sub-long v0, v2, v4

    invoke-static {}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onServiceConnected : Service connected. Elapsed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {p2}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V

    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {v2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {v2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected : Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V

    return-void
.end method
