.class Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

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

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

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
