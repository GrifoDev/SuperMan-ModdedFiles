.class public Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field protected device_idx:I

.field protected device_type_value:Ljava/lang/String;

.field protected duid:Ljava/lang/String;

.field protected svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->duid:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_idx:I

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_type_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_idx:I

    return v0
.end method

.method public getDeviceTypeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_type_value:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getSvc()[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child [duid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->duid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_idx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", svc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_type_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->device_type_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
