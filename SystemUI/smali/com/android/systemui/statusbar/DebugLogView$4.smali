.class Lcom/android/systemui/statusbar/DebugLogView$4;
.super Ljava/lang/Object;
.source "DebugLogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogView;

.field final synthetic val$commandTags:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x5

    :try_start_0
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v5, "logcat"

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const-string/jumbo v5, "*:S"

    const/4 v6, 0x1

    aput-object v5, v1, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/DebugLogView$4;->val$commandTags:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-string/jumbo v5, "-v"

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const-string/jumbo v5, "threadtime"

    const/4 v6, 0x4

    aput-object v5, v1, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/DebugLogView$4;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DebugLogView;->-get1(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/DebugLogView$4;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DebugLogView;->-get1(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/os/Handler;

    move-result-object v6

    const v7, 0x20171215

    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    return-void
.end method
