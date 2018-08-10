.class interface abstract Lcom/samsung/android/friends/cmdsvc/CmdSvcOperation;
.super Ljava/lang/Object;
.source "CmdSvcOperation.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract command(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract mappedAccessory([B[BZ)Z
.end method

.method public abstract sysEvent(Landroid/os/Bundle;)Z
.end method
