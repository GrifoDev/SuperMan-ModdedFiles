.class Landroid/app/ReceiverRestrictedContext;
.super Landroid/content/ContextWrapper;
.source "ContextImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 2

    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string/jumbo v1, "BroadcastReceiver components are not allowed to bind to services"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ReceiverRestrictedContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-super {p0, v0, p2, p3, p4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string/jumbo v1, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Landroid/content/ContextWrapper;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ReceiverCallNotAllowedException;

    const-string/jumbo v1, "BroadcastReceiver components are not allowed to register to receive intents"

    invoke-direct {v0, v1}, Landroid/content/ReceiverCallNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
