.class public Lcom/cmdm/control/bean/CampaignRecommendListResource;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CampaignRecommendListResource"
.end annotation


# instance fields
.field public campaignRecommendList:Lcom/cmdm/control/bean/CampaignRecommendList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignRecommendList"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/CampaignRecommendList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CampaignRecommendList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->campaignRecommendList:Lcom/cmdm/control/bean/CampaignRecommendList;

    return-void
.end method


# virtual methods
.method public getCampaignRecommendList()Lcom/cmdm/control/bean/CampaignRecommendList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->campaignRecommendList:Lcom/cmdm/control/bean/CampaignRecommendList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignRecommendList(Lcom/cmdm/control/bean/CampaignRecommendList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->campaignRecommendList:Lcom/cmdm/control/bean/CampaignRecommendList;

    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendListResource;->range:Ljava/lang/String;

    return-void
.end method
