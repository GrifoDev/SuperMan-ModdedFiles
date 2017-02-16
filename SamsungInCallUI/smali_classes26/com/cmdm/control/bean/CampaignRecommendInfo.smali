.class public Lcom/cmdm/control/bean/CampaignRecommendInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "campaignRecommendInfo"
.end annotation


# instance fields
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

.field public campaignSummary:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignSummary"
    .end annotation
.end field

.field public campaignTemplateType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignTemplateType"
    .end annotation
.end field

.field public campaignThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignThumbnailUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignPbsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignPbsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignTemplateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignTemplateType:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCampaignName(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCampaignPbsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignPbsUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignPbsUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCampaignSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignSummary"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignSummary:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCampaignTemplateType(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignTemplateType"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignTemplateType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCampaignThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendInfo;->campaignThumbnailUrl:Ljava/lang/String;

    .line 91
    return-void
.end method
