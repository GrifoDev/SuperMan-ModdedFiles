.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
        "Lcom/samsung/systemui/splugins/navillera/PluginNavillera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/navillera/PluginNavillera;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->onPluginConnected(Lcom/samsung/systemui/splugins/navillera/PluginNavillera;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/navillera/PluginNavillera;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/samsung/systemui/splugins/navillera/PluginNavillera;)Lcom/samsung/systemui/splugins/navillera/PluginNavillera;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/samsung/systemui/splugins/navillera/PluginNavillera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navillera/PluginNavillera;->onStart(Lcom/samsung/systemui/splugins/navillera/PluginNavilleraManager;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/navillera/PluginNavillera;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/navillera/PluginNavillera;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/navillera/PluginNavillera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/samsung/systemui/splugins/navillera/PluginNavillera;)Lcom/samsung/systemui/splugins/navillera/PluginNavillera;

    return-void
.end method
