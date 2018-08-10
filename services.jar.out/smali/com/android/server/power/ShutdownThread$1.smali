.class final Lcom/android/server/power/ShutdownThread$1;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get36()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v2, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Z

    move-result v2

    if-eq v2, v1, :cond_0

    const-string/jumbo v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dex mode different, pre is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cur is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set2(Z)Z

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get37()I

    move-result v2

    if-ne v2, v6, :cond_2

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Dex mode is changed, need to create a new dialog for UI"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-get12(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get16()Z

    move-result v5

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get21()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->-set4(Lcom/android/server/power/ShutdownThread;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-get12(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "uncryptStep is NON STARTED"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
