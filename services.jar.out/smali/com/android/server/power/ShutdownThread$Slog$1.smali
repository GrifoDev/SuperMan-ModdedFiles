.class final Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Slog;->-set0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recovery"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get12()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recovery-update"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get12()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ShutdownDelay"

    const-string/jumbo v1, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get20()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get12()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string/jumbo v0, "ShutdownDelay"

    const-string/jumbo v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "-k -z -d -o /data/log/dumpstate_shutdownthread"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownDelay"

    const-string/jumbo v1, "delayDumpLock released"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
