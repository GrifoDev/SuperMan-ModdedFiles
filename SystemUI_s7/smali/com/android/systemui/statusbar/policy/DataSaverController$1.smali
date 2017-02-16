.class Lcom/android/systemui/statusbar/policy/DataSaverController$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DataSaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;

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
    .locals 0

    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->-get0(Lcom/android/systemui/statusbar/policy/DataSaverController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$1$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverController$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 0

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
