.class Lcom/android/server/connectivity/PacManager$4$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacManager$4;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-get1(Lcom/android/server/connectivity/PacManager;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacManager;->-set1(Lcom/android/server/connectivity/PacManager;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacManager;->-set2(Lcom/android/server/connectivity/PacManager;I)I

    if-eq p1, v2, :cond_1

    const-string/jumbo v0, "PacManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PacManager"

    const-string/jumbo v1, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
