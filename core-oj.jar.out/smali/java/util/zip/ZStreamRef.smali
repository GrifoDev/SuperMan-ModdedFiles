.class Ljava/util/zip/ZStreamRef;
.super Ljava/lang/Object;
.source "ZStreamRef.java"


# instance fields
.field private address:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Ljava/util/zip/ZStreamRef;->address:J

    .line 35
    return-void
.end method


# virtual methods
.method address()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Ljava/util/zip/ZStreamRef;->address:J

    return-wide v0
.end method

.method clear()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZStreamRef;->address:J

    .line 43
    return-void
.end method
