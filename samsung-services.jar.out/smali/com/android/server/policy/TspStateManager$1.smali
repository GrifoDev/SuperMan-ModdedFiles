.class Lcom/android/server/policy/TspStateManager$1;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "set_grip_data,"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "TspStateManagerInternal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update cmd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v8}, Lcom/android/server/policy/TspStateManager;->-get1(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v8}, Lcom/android/server/policy/TspStateManager;->-get1(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v9}, Lcom/android/server/policy/TspStateManager;->-get0(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateTspState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/sys/class/sec/tsp/cmd"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "TspStateManagerInternal"

    const-string/jumbo v9, "The file is not existed."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "TspStateManagerInternal"

    const-string/jumbo v9, "The file cannot write."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v5, v6

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    throw v8

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v5, v6

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v5, v6

    goto :goto_2
.end method
