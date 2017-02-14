.class Lsun/net/www/http/KeepAliveEntry;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"


# instance fields
.field hc:Lsun/net/www/http/HttpClient;

.field idleStartTime:J


# direct methods
.method constructor <init>(Lsun/net/www/http/HttpClient;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    iput-wide p2, p0, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    return-void
.end method
