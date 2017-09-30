.class public Lcom/cmdm/control/bean/ShowingCRS;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ShowingCRS"
.end annotation


# instance fields
.field public buddies:Lcom/cmdm/control/bean/PhoneList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Buddies"
    .end annotation
.end field

.field public cRSProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSProfile"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ContentId"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Description"
    .end annotation
.end field

.field public greeting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Greeting"
    .end annotation
.end field

.field public isCurrentUsed:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "IsCurrentUsed"
    .end annotation
.end field

.field public settedDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "SettedDate"
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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/PhoneList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PhoneList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->buddies:Lcom/cmdm/control/bean/PhoneList;

    return-void
.end method


# virtual methods
.method public getBuddies()Lcom/cmdm/control/bean/PhoneList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->buddies:Lcom/cmdm/control/bean/PhoneList;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCurrentUsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->isCurrentUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getSettedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->settedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->timing:Ljava/lang/String;

    return-object v0
.end method

.method public getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public setBuddies(Lcom/cmdm/control/bean/PhoneList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->buddies:Lcom/cmdm/control/bean/PhoneList;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->description:Ljava/lang/String;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setIsCurrentUsed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->isCurrentUsed:Ljava/lang/String;

    return-void
.end method

.method public setSettedDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->settedDate:Ljava/lang/String;

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->templateUrl:Ljava/lang/String;

    return-void
.end method

.method public setTiming(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->timing:Ljava/lang/String;

    return-void
.end method

.method public setcRSProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-void
.end method
