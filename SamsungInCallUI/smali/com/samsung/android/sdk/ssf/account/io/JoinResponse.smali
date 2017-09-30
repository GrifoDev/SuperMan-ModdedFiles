.class public Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field private access_token:Ljava/lang/String;

.field private duid:Ljava/lang/String;

.field private pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

.field private refresh_token:Ljava/lang/String;

.field private services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

.field private urls:[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->urls:[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    return-object v0
.end method

.method public getServicesInfo()[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->duid:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setServerUrls([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->urls:[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    return-void
.end method

.method public setServices([Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoinResponse [duid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->duid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->urls:[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
