.class public final Landroid/hardware/ConsumerIrManager;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsumerIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IConsumerIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "consumer_ir"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/IConsumerIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IConsumerIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v4, :cond_0

    const-string/jumbo v4, "ConsumerIr"

    const-string/jumbo v5, "no consumer ir service."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v4}, Landroid/hardware/IConsumerIrService;->getCarrierFrequencies()[I

    move-result-object v1

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ConsumerIr"

    const-string/jumbo v5, "consumer ir service returned an uneven number of frequencies."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    div-int/lit8 v4, v2, 0x2

    new-instance v5, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    aget v6, v1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    invoke-direct {v5, p0, v6, v7}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/ConsumerIrManager;II)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public hasIrEmitter()Z
    .locals 3

    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ConsumerIr"

    const-string/jumbo v2, "no consumer ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v1}, Landroid/hardware/IConsumerIrService;->hasIrEmitter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transmit(I[I)V
    .locals 3

    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ConsumerIr"

    const-string/jumbo v2, "failed to transmit; no consumer ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    iget-object v2, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/IConsumerIrService;->transmit(Ljava/lang/String;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
