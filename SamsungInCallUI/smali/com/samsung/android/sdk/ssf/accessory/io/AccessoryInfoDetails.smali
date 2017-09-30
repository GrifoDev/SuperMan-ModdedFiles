.class public Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;
.super Ljava/lang/Object;


# instance fields
.field protected ser_no:Ljava/lang/String;

.field protected svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->ser_no:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->svc_id:I

    return v0
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->ser_no:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->svc_id:I

    return-void
.end method
