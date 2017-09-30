.class public Lcom/cmdm/control/bean/DefaultCRSInfo;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/cmdm/control/bean/ContentType;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lcom/cmdm/control/bean/TemplateType;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/cmdm/control/bean/ContentType;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Lcom/cmdm/control/bean/TemplateType;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->template:Lcom/cmdm/control/bean/TemplateType;

    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DefaultCRSInfo;->timing:Ljava/lang/String;

    return-void
.end method
