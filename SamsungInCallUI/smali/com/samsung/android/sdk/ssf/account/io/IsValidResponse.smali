.class public Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;
.super Ljava/lang/Object;


# instance fields
.field private child:[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;

.field private device_type_value:Ljava/lang/String;

.field private esu_pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

.field private pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

.field private st:I

.field private st_desc:Ljava/lang/String;

.field private svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild()[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->child:[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;

    return-object v0
.end method

.method public getDeviceTypeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->device_type_value:Ljava/lang/String;

    return-object v0
.end method

.method public getEsuPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->esu_pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-object v0
.end method

.method public getPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-object v0
.end method

.method public getSt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->st:I

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->st_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSvc()[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    return-object v0
.end method

.method public setChild([Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->child:[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;

    return-void
.end method

.method public setSt(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->st:I

    return-void
.end method

.method public setSvc([Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsValidResponse [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->st_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->device_type_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->svc:[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", child= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->child:[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
