.class Lcom/android/server/pm/PersonaServiceProxy$3;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceProxy;->registerContainerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$3;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "PersonaManagerService::Proxy"

    const-string/jumbo v1, "onDeviceOwnerActivated..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy$3;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->-set0(Lcom/android/server/pm/PersonaServiceProxy;Z)Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy$3;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->-wrap1(Lcom/android/server/pm/PersonaServiceProxy;I)V

    return-void
.end method
