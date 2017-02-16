.class public Ljava/net/UnknownServiceException;
.super Ljava/io/IOException;
.source "UnknownServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x39db61a6beb6c154L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
