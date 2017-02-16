.class public Lcom/cmdm/control/bean/MyDIYCRS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MyDIYCRS"
.end annotation


# instance fields
.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ContentId"
    .end annotation
.end field

.field public cost:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Cost"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSProfile"
    .end annotation
.end field

.field public diyDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "DIYDate"
    .end annotation
.end field

.field private isChecked:Z

.field public shared:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Shared"
    .end annotation
.end field

.field public verifyState:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "VerifyState"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->cost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getDiyDate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 75
    const-string v0, ""

    .line 76
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0
.end method

.method public getShared()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->shared:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->verifyState:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/cmdm/control/bean/MyDIYCRS;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->isChecked:Z

    .line 158
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->contentId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 0
    .param p1, "cost"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->cost:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "crsProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 149
    return-void
.end method

.method public setDiyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyDate"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->diyDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setShared(Ljava/lang/String;)V
    .locals 0
    .param p1, "shared"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->shared:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setVerifyState(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyState"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDIYCRS;->verifyState:Ljava/lang/String;

    .line 134
    return-void
.end method
