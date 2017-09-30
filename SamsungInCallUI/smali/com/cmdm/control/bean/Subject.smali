.class public Lcom/cmdm/control/bean/Subject;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Subject"
.end annotation


# instance fields
.field public campaignPbsUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignPbsUrl"
    .end annotation
.end field

.field public isNeedLogin:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isNeedLogin"
    .end annotation
.end field

.field public subjecDescription:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subjecDescription"
    .end annotation
.end field

.field public subjecId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subjecId"
    .end annotation
.end field

.field public subjecImage:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subjecImage"
    .end annotation
.end field

.field public subjecName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subjecName"
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
.method public getIsNeedLogin()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->isNeedLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->isNeedLogin:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->isNeedLogin:Ljava/lang/String;

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

.method public getSubjecDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->subjecDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjecId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->subjecId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjecImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->subjecImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjecName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Subject;->subjecName:Ljava/lang/String;

    return-object v0
.end method

.method public setSubjecDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Subject;->subjecDescription:Ljava/lang/String;

    return-void
.end method

.method public setSubjecId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Subject;->subjecId:Ljava/lang/String;

    return-void
.end method

.method public setSubjecImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Subject;->subjecImage:Ljava/lang/String;

    return-void
.end method

.method public setSubjecName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Subject;->subjecName:Ljava/lang/String;

    return-void
.end method
