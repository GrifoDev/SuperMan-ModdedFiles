.class public Lcom/cmdm/control/bean/BuddySettingsCRS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BuddySettingsCRS"
.end annotation


# instance fields
.field public buddyMsisdn:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "BuddyMsisdn"
    .end annotation
.end field

.field public buddyNickname:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "BuddyNickname"
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

.field public mTemplateType:Lcom/cmdm/control/bean/TemplateType;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "TemplateType"
    .end annotation
.end field

.field public setDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "SetDate"
    .end annotation
.end field

.field public str:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "String"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuddyMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->buddyMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getBuddyNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->buddyNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 82
    const-string v0, ""

    .line 83
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getmTemplateType()Lcom/cmdm/control/bean/TemplateType;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->mTemplateType:Lcom/cmdm/control/bean/TemplateType;

    return-object v0
.end method

.method public setBuddyMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "buddyMsisdn"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->buddyMsisdn:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setBuddyNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "buddyNickname"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->buddyNickname:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->contentId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0
    .param p1, "crsProfile"    # Lcom/cmdm/control/bean/CRSProfile;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 171
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->greeting:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSetDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "setDate"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->setDate:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->str:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setmTemplateType(Lcom/cmdm/control/bean/TemplateType;)V
    .locals 0
    .param p1, "mTemplateType"    # Lcom/cmdm/control/bean/TemplateType;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cmdm/control/bean/BuddySettingsCRS;->mTemplateType:Lcom/cmdm/control/bean/TemplateType;

    .line 156
    return-void
.end method
