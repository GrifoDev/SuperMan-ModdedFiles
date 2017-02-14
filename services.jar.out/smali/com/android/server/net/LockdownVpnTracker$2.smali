.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-wrap1(Lcom/android/server/net/LockdownVpnTracker;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-wrap0(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-wrap2(Lcom/android/server/net/LockdownVpnTracker;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "LazyHandleStateChangedLocked(): Thread Bye."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/net/LockdownVpnTracker;->-set0(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-wrap2(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "LazyHandleStateChangedLocked(): Thread exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
