.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v10, 0x2

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[stpoc] POC READ Success"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    const-string/jumbo v9, "power"

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v8, "[stpoc] D1 POC completed(isPocDream1NA)"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "d1_poc_index"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_poc_case_d1_index"

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v7, "settings"

    invoke-virtual {v2, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[stpoc] D2 POC completed"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v9, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v9

    invoke-static {v7, v9, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v9, "sync"

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[reset tracking] write to recovery_cause"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    :try_start_3
    new-instance v6, Ljava/io/FileWriter;

    const-string/jumbo v7, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string/jumbo v7, "[SETTING] PocBalanceProgressActivity - finishReadPoc"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object v5, v6

    :goto_3
    :try_start_7
    const-string/jumbo v7, "PocBalanceProgressActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v7, "recovery"

    invoke-virtual {v2, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_2

    :cond_3
    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v7

    :goto_5
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_6
    if-eqz v5, :cond_4

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_4
    :goto_7
    if-eqz v8, :cond_6

    :try_start_b
    throw v8

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v9

    if-nez v8, :cond_5

    move-object v8, v9

    goto :goto_7

    :cond_5
    if-eq v8, v9, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    throw v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v7

    if-ne v7, v10, :cond_0

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v8, "[stpoc] POC READ Fail"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v5, v6

    goto :goto_6

    :catch_7
    move-exception v7

    move-object v5, v6

    goto :goto_5
.end method
