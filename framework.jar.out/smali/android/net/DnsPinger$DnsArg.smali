.class Landroid/net/DnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsArg"
.end annotation


# instance fields
.field dns:Ljava/net/InetAddress;

.field seq:I

.field targetUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/DnsPinger;


# direct methods
.method constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/DnsPinger$DnsArg;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    iput p3, p0, Landroid/net/DnsPinger$DnsArg;->seq:I

    iput-object p4, p0, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    return-void
.end method
