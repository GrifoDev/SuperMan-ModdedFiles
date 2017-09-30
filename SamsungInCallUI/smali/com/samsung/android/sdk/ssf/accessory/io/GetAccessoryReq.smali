.class public Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;
.super Lcom/samsung/android/sdk/ssf/accessory/io/ResourceIdReq;


# instance fields
.field protected st_fltr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceIdReq;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;->st_fltr:Ljava/util/List;

    return-object v0
.end method

.method public setStatusFilter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;->st_fltr:Ljava/util/List;

    return-void
.end method
