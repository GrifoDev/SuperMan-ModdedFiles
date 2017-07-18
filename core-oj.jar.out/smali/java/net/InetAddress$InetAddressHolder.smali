.class Ljava/net/InetAddress$InetAddressHolder;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InetAddressHolder"
.end annotation


# instance fields
.field address:I

.field family:I

.field hostName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    iput p2, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    iput p3, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return-void
.end method


# virtual methods
.method getAddress()I
    .locals 1

    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    return v0
.end method

.method getFamily()I
    .locals 1

    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return v0
.end method

.method getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    return-object v0
.end method
