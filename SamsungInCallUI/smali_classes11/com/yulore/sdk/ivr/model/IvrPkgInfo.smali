.class public Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
.super Ljava/lang/Object;
.source "IvrPkgInfo.java"


# instance fields
.field private incUpdateUrl:Ljava/lang/String;

.field private incUpdateUrlSign:Ljava/lang/String;

.field private s_version:I

.field private sign:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private updateUrlSign:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIncUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIncUpdateUrlSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrlSign:Ljava/lang/String;

    return-object v0
.end method

.method public getS_version()I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->s_version:I

    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrlSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrlSign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->version:I

    return v0
.end method

.method public setIncUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrl:Ljava/lang/String;

    return-void
.end method

.method public setIncUpdateUrlSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrlSign:Ljava/lang/String;

    return-void
.end method

.method public setS_version(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->s_version:I

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->sign:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrlSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrlSign:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IvrPkgInfo [version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrlSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrlSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", incUpdateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", incUpdateUrlSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrlSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->s_version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
