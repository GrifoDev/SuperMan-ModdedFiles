.class Lcom/android/server/vr/GearVrManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received UpsmEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDockState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/GearVrManagerService;->-get0(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-get1(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    packed-switch v0, :pswitch_data_0

    :try_start_0
    const-string/jumbo v1, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap7(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set2(Lcom/android/server/vr/GearVrManagerService;I)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap47(Lcom/android/server/vr/GearVrManagerService;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap1(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set0(Lcom/android/server/vr/GearVrManagerService;I)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap45(Lcom/android/server/vr/GearVrManagerService;)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set1(Lcom/android/server/vr/GearVrManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_2
    const-string/jumbo v1, "GearVrManagerService"

    const-string/jumbo v3, "UPSM Enabled, ignore forcing vr exit"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "GearVrManagerService"

    const-string/jumbo v3, "UPSM Enabled, ignore forcing undock"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set1(Lcom/android/server/vr/GearVrManagerService;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
