.class Landroid/net/wifi/PppoeStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "net.ppp3.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string/jumbo v0, "net.ppp3.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "net.ppp3.local-ip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-set1(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "net.ppp3.remote-ip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-set0(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->-get2(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    new-instance v3, Landroid/net/RouteInfo;

    const-string/jumbo v0, "ppp3"

    invoke-direct {v3, v5, v7, v0, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

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

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-wrap5(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "PPPOE_STATE_CONNECTED"

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-wrap6(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/net/wifi/PppoeStateMachine;->-set3(Landroid/net/wifi/PppoeStateMachine;J)J

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "SUCCESS"

    invoke-static {v0, v1, v5}, Landroid/net/wifi/PppoeStateMachine;->-wrap4(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "ppp3"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->-get3(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3e9

    invoke-static/range {v0 .. v6}, Landroid/net/wifi/PppoeStateMachine;->-wrap8(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public exit()V
    .locals 4

    const-string/jumbo v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->-set3(Landroid/net/wifi/PppoeStateMachine;J)J

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "PPPOE_STATE_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->-wrap6(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

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
    return v0

    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v2, "ALREADY_ONLINE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->-wrap4(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v2, "PPPOE_STATE_DISCONNECTING"

    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->-wrap6(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x70001
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
