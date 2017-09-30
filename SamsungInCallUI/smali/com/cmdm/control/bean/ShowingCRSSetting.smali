.class public Lcom/cmdm/control/bean/ShowingCRSSetting;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ShowingCRSSetting"
.end annotation


# static fields
.field public static xmlns:Ljava/lang/String;


# instance fields
.field public buddies:Lcom/cmdm/control/bean/PhoneList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Buddies"
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "cid"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Description"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "greeting"
    .end annotation
.end field

.field public isCurrentUsed:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "IsCurrentUsed"
    .end annotation
.end field

.field public mode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public showcategory:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "showcategory"
    .end annotation
.end field

.field public templateId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "templateId"
    .end annotation
.end field

.field public timing:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "timing"
    .end annotation
.end field

.field public workTimeSet:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "workTimeSet"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    sput-object v0, Lcom/cmdm/control/bean/ShowingCRSSetting;->xmlns:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/PhoneList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PhoneList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->buddies:Lcom/cmdm/control/bean/PhoneList;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setShowcategory(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setMode(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setIsCurrentUsed(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setCid(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/cmdm/control/util/client/Setting;->getSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setGreeting(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setTemplateId(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->buddies:Lcom/cmdm/control/bean/PhoneList;

    invoke-virtual {v0, p9}, Lcom/cmdm/control/bean/PhoneList;->setMsisdnlist(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p10}, Lcom/cmdm/control/bean/ShowingCRSSetting;->setWorkTimeSet(Ljava/lang/String;)V

    return-void
.end method

.method public static getShowingCRSSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/cmdm/control/bean/ShowingCRSSetting;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/cmdm/control/bean/ShowingCRSSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/bean/ShowingCRSSetting;->xmlns:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ddddd"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCurrentUsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->isCurrentUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getShowcategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->showcategory:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkTimeSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->workTimeSet:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->cid:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->description:Ljava/lang/String;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setIsCurrentUsed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->isCurrentUsed:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->mode:Ljava/lang/String;

    return-void
.end method

.method public setShowcategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->showcategory:Ljava/lang/String;

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->timing:Ljava/lang/String;

    return-void
.end method

.method public setWorkTimeSet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRSSetting;->workTimeSet:Ljava/lang/String;

    return-void
.end method
