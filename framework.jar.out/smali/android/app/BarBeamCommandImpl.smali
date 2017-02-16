.class public Landroid/app/BarBeamCommandImpl;
.super Ljava/lang/Object;
.source "BarBeamCommandImpl.java"

# interfaces
.implements Landroid/app/BarBeamCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    }
.end annotation


# static fields
.field private static final hopSize:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mService:Landroid/app/IBarBeamService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/IBarBeamService;)V
    .locals 3
    .param p1, "service"    # Landroid/app/IBarBeamService;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "BarBeamCommandImpl"

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    .line 54
    const-string/jumbo v0, "BarBeamCommandImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BarBeamCommandImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/BarBeamListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/app/BarBeamListener;

    .prologue
    .line 62
    if-eqz p1, :cond_2

    .line 63
    iget-object v5, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 64
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 65
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 66
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 67
    .local v2, "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    invoke-virtual {v2}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 68
    const-string/jumbo v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  .addListener : fail. already registered / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 69
    return-void

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;-><init>(Landroid/app/BarBeamCommandImpl;Landroid/app/BarBeamListener;)V

    .line 74
    .restart local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v4, v2}, Landroid/app/IBarBeamService;->addListener(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :goto_1
    :try_start_3
    const-string/jumbo v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  .addListener : success. listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 61
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3    # "size":I
    :cond_2
    return-void

    .line 77
    .restart local v1    # "i":I
    .restart local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v4, "BarBeamCommandImpl"

    const-string/jumbo v6, "RemoteException in registerListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected getCurrentStatus()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x1

    .line 169
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v2}, Landroid/app/IBarBeamService;->getCurrentStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    .local v1, "ret":Z
    return v1

    .line 171
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "RemoteException in getCurrentStatus(): "

    invoke-direct {v2, v3, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isImplementationCompatible()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v2}, Landroid/app/IBarBeamService;->isImplementationCompatible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    .local v1, "ret":Z
    return v1

    .line 240
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "isImplementationCompatible in setBarcode: "

    invoke-direct {v2, v3, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeListener(Landroid/app/BarBeamListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/app/BarBeamListener;

    .prologue
    .line 92
    iget-object v5, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 93
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 95
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 96
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 95
    .local v2, "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 102
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 103
    .restart local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    invoke-virtual {v2}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 104
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v4, v2}, Landroid/app/IBarBeamService;->removeListener(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :cond_1
    :goto_2
    :try_start_2
    const-string/jumbo v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  .removeListener : / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 91
    return-void

    .line 107
    .restart local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "BarBeamCommandImpl"

    const-string/jumbo v6, "RemoteException in removeListener : "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 101
    .restart local v1    # "i":I
    .restart local v2    # "l":Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .restart local v3    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setBarcode([B)V
    .locals 3
    .param p1, "barcode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 220
    const-string/jumbo v1, "BarBeamCommandImpl"

    const-string/jumbo v2, "sendDataTable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1, p1}, Landroid/app/IBarBeamService;->setBarcode([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "RemoteException in setBarcode: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 6
    .param p1, "hopSequence"    # [Landroid/app/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 202
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x7

    new-array v2, v3, [B

    .line 203
    .local v2, "tempbuffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 204
    aget-object v3, p1, v1

    mul-int/lit8 v4, v1, 0x7

    invoke-virtual {p0, v3, v2, v4}, Landroid/app/BarBeamCommandImpl;->writeHop2ByteArray(Landroid/app/Hop;[BI)I

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    const-string/jumbo v3, "BarBeamCommandImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHopSequenceTable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    array-length v4, p1

    const/4 v5, 0x7

    invoke-interface {v3, v2, v4, v5}, Landroid/app/IBarBeamService;->setHopSequence([BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/app/BarBeamException;

    const-string/jumbo v4, "RemoteException in sendHopSequenceTable: "

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v1, "BarBeamCommandImpl"

    const-string/jumbo v2, "startBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->startBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "RemoteException in startBarBeam: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBeaming(I)V
    .locals 3
    .param p1, "repeat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 138
    const-string/jumbo v1, "BarBeamCommandImpl"

    const-string/jumbo v2, "startBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1, p1}, Landroid/app/IBarBeamService;->startBeaming_repeat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "RemoteException in startBeaming(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 152
    const-string/jumbo v1, "BarBeamCommandImpl"

    const-string/jumbo v2, "stopBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->stopBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "RemoteException in stopBarBeam(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeHop2ByteArray(Landroid/app/Hop;[BI)I
    .locals 2
    .param p1, "hop"    # Landroid/app/Hop;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 187
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .local v0, "offset":I
    iget v1, p1, Landroid/app/Hop;->barWidth:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 188
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    iget v1, p1, Landroid/app/Hop;->symbolCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 189
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 190
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 191
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    iget v1, p1, Landroid/app/Hop;->packetCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 192
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 193
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 194
    const/4 v1, 0x7

    return v1
.end method
