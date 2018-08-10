.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field final mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;[B)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap1(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-get2(Landroid/media/MediaCas;)Landroid/media/ICas;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v2, v3}, Landroid/media/ICas;->closeSession([B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap0(Landroid/media/MediaCas;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasStateException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public processEcm([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    return-void
.end method

.method public processEcm([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap1(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-get0(Landroid/media/MediaCas;)Landroid/media/MediaCas$ParcelableCasData;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/MediaCas$ParcelableCasData;->set([BII)V

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-get2(Landroid/media/MediaCas;)Landroid/media/ICas;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    iget-object v4, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v4}, Landroid/media/MediaCas;->-get0(Landroid/media/MediaCas;)Landroid/media/MediaCas$ParcelableCasData;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/media/ICas;->processEcm([BLandroid/media/MediaCas$ParcelableCasData;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap0(Landroid/media/MediaCas;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public setPrivateData([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap1(Landroid/media/MediaCas;)V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-get2(Landroid/media/MediaCas;)Landroid/media/ICas;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v2, v3, p1}, Landroid/media/ICas;->setSessionPrivateData([B[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-wrap0(Landroid/media/MediaCas;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method
