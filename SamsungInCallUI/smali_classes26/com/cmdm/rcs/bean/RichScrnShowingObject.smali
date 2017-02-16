.class public Lcom/cmdm/rcs/bean/RichScrnShowingObject;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdnAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->cid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->greeting:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLocalSourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "localSourceUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setMissdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdn:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMissdnAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "missdnAddress"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
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

    .line 142
    const-string v1, ",sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",missdnAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localSourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
