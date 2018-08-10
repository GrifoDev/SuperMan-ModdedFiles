.class Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;
.super Landroid/os/ContainerStateReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSSIDContainerReceiver"
.end annotation


# instance fields
.field private personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field private semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->updateCurrentContainerLauncherState()Z

    return-void
.end method


# virtual methods
.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->onEvent()V

    return-void
.end method

.method public onEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->updateCurrentContainerLauncherState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->refreshWifiSSID()V

    :cond_0
    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->onEvent()V

    return-void
.end method

.method public updateCurrentContainerLauncherState()Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->semPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedLauncherId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->personaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get0(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiSSIDContainerReceiver;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set1(Lcom/android/server/enterprise/wifi/WifiPolicy;Z)Z

    const/4 v2, 0x1

    return v2
.end method
