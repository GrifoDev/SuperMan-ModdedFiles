.class public Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;
.super Ljava/lang/Object;


# instance fields
.field public rcode:J

.field public rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRcode()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->rcode:J

    return-wide v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->rmsg:Ljava/lang/String;

    return-object v0
.end method
