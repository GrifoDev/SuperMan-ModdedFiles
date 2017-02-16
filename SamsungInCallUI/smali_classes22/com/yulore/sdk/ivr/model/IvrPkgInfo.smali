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

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIncUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIncUpdateUrlSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrlSign:Ljava/lang/String;

    return-object v0
.end method

.method public getS_version()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->s_version:I

    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrlSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrlSign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->version:I

    return v0
.end method

.method public setIncUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "incUpdateUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setIncUpdateUrlSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "incUpdateUrlSign"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->incUpdateUrlSign:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setS_version(I)V
    .locals 0
    .param p1, "s_version"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->s_version:I

    .line 60
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->sign:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUpdateUrlSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrlSign"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->updateUrlSign:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->version:I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
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
