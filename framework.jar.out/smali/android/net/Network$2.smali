.class Landroid/net/Network$2;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/android/okhttp/internal/Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/Network;->maybeInitHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Landroid/net/Network$2;->this$0:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/Network$2;->this$0:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
