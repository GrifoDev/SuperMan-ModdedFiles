.class public Lcom/cmdm/control/bean/CampaigTemplateStart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CampaigTemplateStart"
.end annotation


# instance fields
.field public backgroundUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "backgroundUrl"
    .end annotation
.end field

.field public campaignEndTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignEndTime"
    .end annotation
.end field

.field public campaignId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignId"
    .end annotation
.end field

.field public campaignName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignName"
    .end annotation
.end field

.field public campaignPbsUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignPbsUrl"
    .end annotation
.end field

.field public campaignStartUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignStartUrl"
    .end annotation
.end field

.field public campaignStarteTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignStarteTime"
    .end annotation
.end field

.field public campaignTemplateType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignTemplateType"
    .end annotation
.end field

.field public isNeedLogin:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isNeedLogin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->backgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignPbsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignPbsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignStartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignStarteTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignStarteTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignTemplateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignTemplateType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNeedLogin()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->isNeedLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->isNeedLogin:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->isNeedLogin:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->backgroundUrl:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setCampaignEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignEndTime"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignEndTime:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCampaignName(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCampaignPbsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignPbsUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignPbsUrl:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCampaignStartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignStartUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignStartUrl:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCampaignStarteTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignStarteTime"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignStarteTime:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setCampaignTemplateType(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignTemplateType"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->campaignTemplateType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setIsNeedLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "isNeedLogin"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaigTemplateStart;->isNeedLogin:Ljava/lang/String;

    .line 137
    return-void
.end method
