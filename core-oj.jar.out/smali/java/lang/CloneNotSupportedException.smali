.class public Ljava/lang/CloneNotSupportedException;
.super Ljava/lang/Exception;
.source "CloneNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x481a29f4778b29fbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
