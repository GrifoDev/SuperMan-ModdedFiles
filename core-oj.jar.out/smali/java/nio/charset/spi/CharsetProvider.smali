.class public abstract Ljava/nio/charset/spi/CharsetProvider;
.super Ljava/lang/Object;
.source "CharsetProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 83
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "charsetProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public abstract charsets()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end method
