.class Lcom/android/server/MountService$4;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/MountService;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput p2, p0, Lcom/android/server/MountService$4;->val$uid:I

    iput p3, p0, Lcom/android/server/MountService$4;->val$pid:I

    iput-object p4, p0, Lcom/android/server/MountService$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Ljava/io/IOException;)V
    .locals 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string/jumbo v3, "appfuse"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "unmount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/MountService$4;->val$uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/MountService$4;->val$pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/MountService$4;->val$name:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MountService"

    const-string/jumbo v3, "Failed to unmount appfuse."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
