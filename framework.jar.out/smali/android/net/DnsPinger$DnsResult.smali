.class Landroid/net/DnsPinger$DnsResult;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsResult"
.end annotation


# instance fields
.field resultIp:Ljava/net/InetAddress;

.field final synthetic this$0:Landroid/net/DnsPinger;

.field ttl:J


# direct methods
.method constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;J)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/DnsPinger;
    .param p2, "ip"    # Ljava/net/InetAddress;
    .param p3, "t"    # J

    .prologue
    .line 167
    iput-object p1, p0, Landroid/net/DnsPinger$DnsResult;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 169
    iput-wide p3, p0, Landroid/net/DnsPinger$DnsResult;->ttl:J

    .line 167
    return-void
.end method
