.class Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/CapabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityServiceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityManager;


# direct methods
.method private constructor <init>(Lcom/sec/ims/options/CapabilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;-><init>(Lcom/sec/ims/options/CapabilityManager;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v3, v3, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "no listener for ICapabilityServiceEventListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v3, v3, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-interface {v3, v0, p2}, Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;->onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v3, v3, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "no listener for ICapabilityServiceEventListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v3, v3, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-interface {v3, v0, p2}, Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;->onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no listener for ICapabilityServiceEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;->onOwnCapabilitiesChanged()V

    return-void
.end method
