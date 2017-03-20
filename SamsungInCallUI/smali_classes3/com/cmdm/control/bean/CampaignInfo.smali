.class public Lcom/cmdm/control/bean/CampaignInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "campaignInfo"
.end annotation


# instance fields
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

.field public campaignStarteTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignStarteTime"
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
.method public getCampaignEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignPbsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignPbsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignStarteTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignStarteTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignTemplateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignTemplateType:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignEndTime"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignEndTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCampaignName(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCampaignPbsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignPbsUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignPbsUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCampaignStarteTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignStarteTime"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignStarteTime:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCampaignSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignSummary"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignSummary:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCampaignTemplateType(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignTemplateType"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignTemplateType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCampaignThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaignThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignInfo;->campaignThumbnailUrl:Ljava/lang/String;

    .line 66
    return-void
.end method
