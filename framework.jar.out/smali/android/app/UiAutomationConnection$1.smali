.class Landroid/app/UiAutomationConnection$1;
.super Ljava/lang/Thread;
.source "UiAutomationConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomationConnection;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$sink:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/UiAutomationConnection$1;->this$0:Landroid/app/UiAutomationConnection;

    iput-object p2, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Landroid/app/UiAutomationConnection$1;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    iget-object v8, p0, Landroid/app/UiAutomationConnection$1;->val$command:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v7, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x2000

    :try_start_1
    new-array v0, v7, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-gez v6, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v7, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Error running shell command"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v8, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
