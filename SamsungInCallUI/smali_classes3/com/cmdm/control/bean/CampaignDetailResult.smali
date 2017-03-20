.class public Lcom/cmdm/control/bean/CampaignDetailResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CampaignDetailResult"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f786b459680089dL


# instance fields
.field public campaignBannerUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignBannerUrl"
    .end annotation
.end field

.field public campaignContent:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignContent"
    .end annotation
.end field

.field public campaignDetailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignDetailUrl"
    .end annotation
.end field

.field public campaignId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignId"
    .end annotation
.end field

.field public campaignInstruction:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignInstruction"
    .end annotation
.end field

.field public campaignName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignName"
    .end annotation
.end field

.field public campaignScheme:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignScheme"
    .end annotation
.end field

.field public campaignSummary:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignSummary"
    .end annotation
.end field

.field public campaignThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignThumbnailUrl"
    .end annotation
.end field

.field public campaignWay:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignWay"
    .end annotation
.end field

.field public flower:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flower"
    .end annotation
.end field

.field public winnerList:Lcom/cmdm/control/bean/WinnerList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "winnerList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/cmdm/control/bean/WinnerList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/WinnerList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->winnerList:Lcom/cmdm/control/bean/WinnerList;

    .line 23
    return-void
.end method


# virtual methods
.method public getCampaignBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignInstruction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignWay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignWay:Ljava/lang/String;

    return-object v0
.end method

.method public getFlower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->flower:Ljava/lang/String;

    return-object v0
.end method

.method public getWinnerList()Lcom/cmdm/control/bean/WinnerList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->winnerList:Lcom/cmdm/control/bean/WinnerList;

    return-object v0
.end method

.method public setCampaignBannerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignBannerUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignBannerUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCampaignContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignContent"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignContent:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCampaignInstruction(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignInstruction"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignInstruction:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCampaignName(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCampaignScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignScheme"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignScheme:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCampaignSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignSummary"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignSummary:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setCampaignThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignThumbnailUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCampaignWay(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignWay"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->campaignWay:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFlower(Ljava/lang/String;)V
    .locals 0
    .param p1, "flower"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->flower:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setWinnerList(Lcom/cmdm/control/bean/WinnerList;)V
    .locals 0
    .param p1, "winnerList"    # Lcom/cmdm/control/bean/WinnerList;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignDetailResult;->winnerList:Lcom/cmdm/control/bean/WinnerList;

    .line 42
    return-void
.end method
