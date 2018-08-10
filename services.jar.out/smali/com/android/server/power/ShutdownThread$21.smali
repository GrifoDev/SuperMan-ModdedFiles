.class Lcom/android/server/power/ShutdownThread$21;
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

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$21;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$21;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$21;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$21;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "recovery"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RecoverySystem;

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_0
    if-lez v2, :cond_0

    :try_start_0
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$21;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$21;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v4, v5, v6}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "uncrypt finished. No need to retry uncrypt"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$21;->val$done:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v7

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set21(I)I

    return-void

    :catch_0
    move-exception v0

    add-int/lit8 v2, v2, -0x1

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Error uncrypting file"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method
