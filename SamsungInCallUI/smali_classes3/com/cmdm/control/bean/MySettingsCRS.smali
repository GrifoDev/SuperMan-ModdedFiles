.class public Lcom/cmdm/control/bean/MySettingsCRS;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuddiesBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getBuddiesCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getSettedDate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 116
    const-string v0, ""

    .line 117
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRS;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public setBuddiesBrief(Ljava/lang/String;)V
    .locals 0
    .param p1, "buddiesBrief"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesBrief:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setBuddiesCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "buddiesCount"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->buddiesCount:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->contentId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "crsProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 235
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->greeting:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->mode:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSettedDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "settedDate"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->settedDate:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->str:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateUrl"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->templateUrl:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "timing"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRS;->timing:Ljava/lang/String;

    .line 160
    return-void
.end method
