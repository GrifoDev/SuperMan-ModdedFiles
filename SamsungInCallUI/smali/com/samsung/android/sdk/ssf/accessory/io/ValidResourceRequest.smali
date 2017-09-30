.class public Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;
.super Ljava/lang/Object;


# instance fields
.field protected rsrc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected uniq_dvc_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessoryDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->rsrc:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->uniq_dvc_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessoryDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->rsrc:Ljava/util/List;

    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->uniq_dvc_id:Ljava/lang/String;

    return-void
.end method
