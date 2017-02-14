.class Landroid/net/ip/IpManager$StartedState$1;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Landroid/net/ip/IpReachabilityMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager$StartedState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ip/IpManager$StartedState;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager$StartedState;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpManager$StartedState$1;->this$1:Landroid/net/ip/IpManager$StartedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState$1;->this$1:Landroid/net/ip/IpManager$StartedState;

    iget-object v0, v0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onReachabilityLost(Ljava/lang/String;)V

    return-void
.end method
