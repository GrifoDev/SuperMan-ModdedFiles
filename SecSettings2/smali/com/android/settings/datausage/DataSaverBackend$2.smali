.class Lcom/android/settings/datausage/DataSaverBackend$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get1(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-wrap3(Lcom/android/settings/datausage/DataSaverBackend;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get1(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get3(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$2$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend$2;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get3(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$2$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$2$3;-><init>(Lcom/android/settings/datausage/DataSaverBackend$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get5(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-wrap4(Lcom/android/settings/datausage/DataSaverBackend;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get5(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$2;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get3(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$2$2;-><init>(Lcom/android/settings/datausage/DataSaverBackend$2;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
