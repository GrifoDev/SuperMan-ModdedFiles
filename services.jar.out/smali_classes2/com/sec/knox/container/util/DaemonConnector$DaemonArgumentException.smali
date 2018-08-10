.class Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;
.super Lcom/sec/knox/container/util/DaemonConnectorException;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonArgumentException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    return-void
.end method


# virtual methods
.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
