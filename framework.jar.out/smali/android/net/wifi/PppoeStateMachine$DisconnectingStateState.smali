.class Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingStateState"
.end annotation


# instance fields
.field mRouteinfo:Landroid/net/RouteInfo;

.field ret:Z

.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->ret:Z

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

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v1, 0x1

    const-string/jumbo v2, "PppoeStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->-get2(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v2, Landroid/net/RouteInfo;

    const-string/jumbo v3, "ppp3"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v0, v3, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->mRouteinfo:Landroid/net/RouteInfo;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v3, "ppp3"

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->mRouteinfo:Landroid/net/RouteInfo;

    const/16 v5, 0x3e9

    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/PppoeStateMachine;->-wrap2(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Landroid/net/RouteInfo;I)V

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v3}, Landroid/net/wifi/PppoeStateMachine;->-get4(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/PppoeStateMachine;->-wrap7(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70004
        :pswitch_0
    .end packed-switch
.end method
