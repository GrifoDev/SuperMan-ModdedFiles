.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_SET_TOGGLE:I = 0x8

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quicksettings/TileService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 518
    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 519
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 518
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 524
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    goto :goto_0

    .line 529
    :pswitch_1
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2, v3}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 531
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 533
    :cond_1
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2, v3}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 538
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_0

    .line 542
    :pswitch_3
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 544
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onStartListening()V

    goto :goto_0

    .line 548
    :pswitch_4
    iget-object v3, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/service/quicksettings/TileService;->-set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 549
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2}, Landroid/service/quicksettings/TileService;->onClick()V

    goto :goto_0

    .line 552
    :pswitch_5
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 558
    :pswitch_6
    :try_start_0
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v2

    iget-object v3, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v3}, Landroid/service/quicksettings/TileService;->-get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 563
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 564
    .local v0, "checked":Z
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v2, v0}, Landroid/service/quicksettings/TileService;->semSetToggleButtonChecked(Z)V

    goto/16 :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
