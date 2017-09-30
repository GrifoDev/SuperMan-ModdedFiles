.class public Lcom/cmdm/control/bean/MySettingsCRS;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MySettingsCRS"
.end annotation


# instance fields
.field public buddiesBrief:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "BuddiesBrief"
    .end annotation
.end field

.field public buddiesCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "BuddiesCount"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ContentId"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSProfile"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Greeting"
    .end annotation
.end field

.field public mode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public settedDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "SettedDate"
    .end annotation
.end field

.field public str:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "String"
    .end annotation
.end field

.field public templateId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "TemplateId"
    .end annotation
.end field

.field public templateUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "TemplateUrl"
    .end annotation
.end field

.field public timing:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Timing"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuddiesBrief()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getBuddiesCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getSettedDate()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x4

    const-string v0, ""

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public setBuddiesBrief(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesBrief:Ljava/lang/String;

    return-void
.end method

.method public setBuddiesCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesCount:Ljava/lang/String;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->mode:Ljava/lang/String;

    return-void
.end method

.method public setSettedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->str:Ljava/lang/String;

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateUrl:Ljava/lang/String;

    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->timing:Ljava/lang/String;

    return-void
.end method
