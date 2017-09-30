.class public Lcom/cmdm/control/bean/Topic;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Topic"
.end annotation


# instance fields
.field public campaignPbsUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignPbsUrl"
    .end annotation
.end field

.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Count"
    .end annotation
.end field

.field public coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CoverUrl"
    .end annotation
.end field

.field public isNeedLogin:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isNeedLogin"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Label"
    .end annotation
.end field

.field public topicId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "TopicId"
    .end annotation
.end field

.field public topicName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "TopicName"
    .end annotation
.end field

.field public topicType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "topicType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignPbsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->campaignPbsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNeedLogin()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->isNeedLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->isNeedLogin:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->isNeedLogin:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Topic;->topicType:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignPbsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->campaignPbsUrl:Ljava/lang/String;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->count:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsNeedLogin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->isNeedLogin:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->label:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->topicName:Ljava/lang/String;

    return-void
.end method

.method public setTopicType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Topic;->topicType:Ljava/lang/String;

    return-void
.end method
