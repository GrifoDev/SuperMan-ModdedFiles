.class Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlimIndicatorMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimIndicatorReceiver"
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "iconblacklist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    const-string/jumbo v3, "icon_blacklist"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->-wrap1(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "slimquick_quit_diet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-static {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->-wrap0(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    const-string/jumbo v3, "icon_blacklist"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->-wrap1(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
