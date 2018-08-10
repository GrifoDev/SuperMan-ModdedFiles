.class Lcom/sec/ims/options/CapabilityManager$2;
.super Ljava/lang/Object;
.source "CapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/options/CapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/options/CapabilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Connected to CapabilityDiscoveryService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-set0(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    :cond_0
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/CapabilityListener;

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v3, v1}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener failed. RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-boolean v3, v3, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Re-register CapabilityListener..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    :try_start_1
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v4, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v4, v4, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-virtual {v3, v4}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener failed. RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Disconnected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V

    :cond_0
    invoke-static {v2}, Lcom/sec/ims/options/CapabilityManager;->-set0(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method
