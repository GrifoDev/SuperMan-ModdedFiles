.class Lcom/android/server/power/ShutdownThread$18;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$18;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$18;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$18;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$18;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "recovery"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RecoverySystem;

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$18;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$18;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v3, v4, v5}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$18;->val$done:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v6

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Error uncrypting file"

    invoke-static {v3, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method
