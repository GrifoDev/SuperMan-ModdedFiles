.class Lsun/net/www/protocol/http/EmptyInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3374
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 3378
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 3382
    const/4 v0, -0x1

    return v0
.end method
