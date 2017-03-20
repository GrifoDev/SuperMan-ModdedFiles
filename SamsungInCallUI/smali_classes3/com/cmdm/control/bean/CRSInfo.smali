.class public Lcom/cmdm/control/bean/CRSInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CRSInfo"
.end annotation


# instance fields
.field public content:Lcom/cmdm/control/bean/ContentType;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "content"
    .end annotation
.end field

.field public cyUserFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "cyUserFlag"
    .end annotation
.end field

.field public enterpFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "enterpFlag"
    .end annotation
.end field

.field public enterpId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "enterpId"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "greeting"
    .end annotation
.end field

.field public setFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "setFlag"
    .end annotation
.end field

.field public template:Lcom/cmdm/control/bean/TemplateType;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "template"
    .end annotation
.end field

.field public thumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "thumbUrl"
    .end annotation
.end field

.field public timing:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "timing"
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
.method public getContent()Lcom/cmdm/control/bean/ContentType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    return-object v0
.end method

.method public getCyUserFlag()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->cyUserFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->cyUserFlag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->cyUserFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnterpFlag()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpFlag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnterpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpId:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->greeting:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetFlag()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->setFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->setFlag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->setFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemplate()Lcom/cmdm/control/bean/TemplateType;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSInfo;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/ContentType;)V
    .locals 0
    .param p1, "content"    # Lcom/cmdm/control/bean/ContentType;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    .line 90
    return-void
.end method

.method public setCyUserFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "cyUserFlag"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->cyUserFlag:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setEnterpFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "enterpFlag"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpFlag:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setEnterpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "enterpId"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->enterpId:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->greeting:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSetFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "setFlag"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->setFlag:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTemplate(Lcom/cmdm/control/bean/TemplateType;)V
    .locals 0
    .param p1, "template"    # Lcom/cmdm/control/bean/TemplateType;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    .line 135
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->thumbUrl:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "timing"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSInfo;->timing:Ljava/lang/String;

    .line 105
    return-void
.end method
