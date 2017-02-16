.class public Ljava/nio/charset/CoderMalfunctionError;
.super Ljava/lang/Error;
.source "CoderMalfunctionError.java"


# static fields
.field private static final serialVersionUID:J = -0xffaa36e1bfbb6fdL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
