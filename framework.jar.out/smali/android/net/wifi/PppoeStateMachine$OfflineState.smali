.class Landroid/net/wifi/PppoeStateMachine$OfflineState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfflineState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string/jumbo v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-wrap5(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/PPPOEConfig;

    invoke-static {v2, v1}, Landroid/net/wifi/PppoeStateMachine;->-set2(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEConfig;)Landroid/net/wifi/PPPOEConfig;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->-get6(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->-get6(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v1

    const-string/jumbo v2, "wifi.interface"

    const-string/jumbo v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$OfflineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->-get0(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->-wrap7(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70001
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
