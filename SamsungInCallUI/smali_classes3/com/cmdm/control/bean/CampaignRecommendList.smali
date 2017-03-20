.class public Lcom/cmdm/control/bean/CampaignRecommendList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "campaignRecommendList"
.end annotation


# instance fields
.field public campaignRecommendList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "campaignRecommendInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignRecommendList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignRecommendList;->campaignRecommendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCampaignRecommendList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "campaignRecommendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CampaignRecommendInfo;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignRecommendList;->campaignRecommendList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method
