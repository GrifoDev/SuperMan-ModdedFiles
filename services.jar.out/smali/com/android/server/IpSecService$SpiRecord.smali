.class final Lcom/android/server/IpSecService$SpiRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpiRecord"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mDirection:I

.field private final mLocalAddress:Ljava/lang/String;

.field private final mRemoteAddress:Ljava/lang/String;

.field private mResourceId:I

.field private mSpi:I

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;IILjava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p7}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;Landroid/os/IBinder;)V

    iput p2, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    iput p3, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    iput-object p4, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    iput-object p7, p0, Lcom/android/server/IpSecService$SpiRecord;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected nullifyRecord()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    iput v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    return-void
.end method

.method protected releaseResources()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    iget-object v3, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete SPI reservation with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0
.end method
