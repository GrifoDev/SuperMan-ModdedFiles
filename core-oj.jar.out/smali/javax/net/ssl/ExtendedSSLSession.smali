.class public abstract Ljavax/net/ssl/ExtendedSSLSession;
.super Ljava/lang/Object;
.source "ExtendedSSLSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public abstract getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
