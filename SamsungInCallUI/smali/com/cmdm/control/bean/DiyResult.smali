.class public Lcom/cmdm/control/bean/DiyResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DiyResult"
.end annotation


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "code"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSProfile"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DiyResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DiyResult;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DiyResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DiyResult;->code:Ljava/lang/String;

    return-void
.end method

.method public setCrsProfile(Lcom/cmdm/control/bean/CRSProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DiyResult;->crsProfile:Lcom/cmdm/control/bean/CRSProfile;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DiyResult;->text:Ljava/lang/String;

    return-void
.end method
