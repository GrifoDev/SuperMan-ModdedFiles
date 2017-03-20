.class public Lcom/cmdm/control/bean/DefaultCRSInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DefaultCRSInfo"
.end annotation


# instance fields
.field public content:Lcom/cmdm/control/bean/ContentType;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "content"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "greeting"
    .end annotation
.end field

.field public template:Lcom/cmdm/control/bean/TemplateType;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "template"
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/cmdm/control/bean/ContentType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lcom/cmdm/control/bean/TemplateType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/ContentType;)V
    .locals 0
    .param p1, "content"    # Lcom/cmdm/control/bean/ContentType;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    .line 58
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->greeting:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTemplate(Lcom/cmdm/control/bean/TemplateType;)V
    .locals 0
    .param p1, "template"    # Lcom/cmdm/control/bean/TemplateType;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    .line 100
    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "timing"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->timing:Ljava/lang/String;

    .line 72
    return-void
.end method
