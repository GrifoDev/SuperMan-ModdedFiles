.class public Lcom/cmdm/rcs/bean/RichScrnShowingObject;
.super Ljava/lang/Object;


# instance fields
.field public cid:Ljava/lang/String;

.field public greeting:Ljava/lang/String;

.field public localSourceUrl:Ljava/lang/String;

.field public missdn:Ljava/lang/String;

.field public missdnAddress:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSourceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdnAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->cid:Ljava/lang/String;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setLocalSourceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setMissdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdn:Ljava/lang/String;

    return-void
.end method

.method public setMissdnAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missdn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",greeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->greeting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",missdnAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localSourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
