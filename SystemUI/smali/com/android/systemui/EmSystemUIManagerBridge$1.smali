.class Lcom/android/systemui/EmSystemUIManagerBridge$1;
.super Ljava/lang/Object;
.source "EmSystemUIManagerBridge.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/EmSystemUIManagerBridge;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener",
        "<",
        "Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/EmSystemUIManagerBridge;


# direct methods
.method constructor <init>(Lcom/android/systemui/EmSystemUIManagerBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/EmSystemUIManagerBridge$1;->onPluginConnected(Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    invoke-static {v0, p1}, Lcom/android/systemui/EmSystemUIManagerBridge;->-set0(Lcom/android/systemui/EmSystemUIManagerBridge;Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;)Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    invoke-static {v0}, Lcom/android/systemui/EmSystemUIManagerBridge;->-wrap1(Lcom/android/systemui/EmSystemUIManagerBridge;)V

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    invoke-static {v0}, Lcom/android/systemui/EmSystemUIManagerBridge;->-wrap2(Lcom/android/systemui/EmSystemUIManagerBridge;)V

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    invoke-static {v0}, Lcom/android/systemui/EmSystemUIManagerBridge;->-wrap0(Lcom/android/systemui/EmSystemUIManagerBridge;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/EmSystemUIManagerBridge$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge$1;->this$0:Lcom/android/systemui/EmSystemUIManagerBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/EmSystemUIManagerBridge;->-set0(Lcom/android/systemui/EmSystemUIManagerBridge;Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;)Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    return-void
.end method
