.class Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugins/PluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get4(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/PluginListener;->onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get4(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
