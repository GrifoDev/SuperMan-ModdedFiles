.class public abstract Lcom/thoughtworks/xstream/core/BaseException;
.super Ljava/lang/RuntimeException;
.source "BaseException.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getCause()Ljava/lang/Throwable;
.end method
