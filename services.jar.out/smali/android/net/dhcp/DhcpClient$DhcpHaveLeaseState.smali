.class Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveLeaseState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get23(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x30007

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set0(Landroid/net/dhcp/DhcpClient;I)I

    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Lease expired!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;I)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x3006a
        :pswitch_0
    .end packed-switch
.end method
