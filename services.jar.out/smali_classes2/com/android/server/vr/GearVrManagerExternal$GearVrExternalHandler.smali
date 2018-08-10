.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-get0(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "GearVrManagerExternal"

    const-string/jumbo v6, "VRConnection timeout for VRService!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap0(Lcom/android/server/vr/GearVrManagerExternal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleDeviceEventChanged(I)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap1(Lcom/android/server/vr/GearVrManagerExternal;I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrHome()V

    goto :goto_0

    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartWaitActivity(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrRecents()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
