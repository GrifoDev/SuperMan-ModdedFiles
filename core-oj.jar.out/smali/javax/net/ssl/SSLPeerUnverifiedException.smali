.class public Ljavax/net/ssl/SSLPeerUnverifiedException;
.super Ljavax/net/ssl/SSLException;
.source "SSLPeerUnverifiedException.java"


# static fields
.field private static final serialVersionUID:J = -0x7bc87985330147e3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
