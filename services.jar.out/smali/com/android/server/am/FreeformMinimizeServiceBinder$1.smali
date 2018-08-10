.class Lcom/android/server/am/FreeformMinimizeServiceBinder$1;
.super Ljava/lang/Object;
.source "FreeformMinimizeServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreeformMinimizeServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreeformMinimizeServiceBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreeformMinimizeServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreeformMinimizeServiceBinder$1;->this$0:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FreeformMinimizeServiceBinder"

    const-string/jumbo v1, "onServiceConnected: MinimizeContainerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FreeformMinimizeServiceBinder"

    const-string/jumbo v1, "onServiceDisconnected: MinimizeContainerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreeformMinimizeServiceBinder$1;->this$0:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    iget-boolean v0, v0, Lcom/android/server/am/FreeformMinimizeServiceBinder;->mIsMinimizeContainerServiceRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/FreeformMinimizeServiceBinder$1;->this$0:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v1, "service_disconnected"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformMinimizeServiceBinder$1;->this$0:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v1, "service_disconnected"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
