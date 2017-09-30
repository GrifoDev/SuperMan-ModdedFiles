.class public Lcom/cmdm/control/bean/CaiXiangShowingObject;
.super Ljava/lang/Object;


# static fields
.field public static final RANDOM_TYPE_ALL:I = 0x4

.field public static final TYPE_ALL:I = 0x3

.field public static final TYPE_GROUP:I = 0x2

.field public static final TYPE_SINGLE_PERSON:I = 0x1


# instance fields
.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field public greeting:Ljava/lang/String;

.field public guoQiDate:Ljava/lang/String;

.field public missdn:Ljava/lang/String;

.field public setDate:Ljava/lang/String;

.field public show_method:Ljava/lang/String;

.field public start_time:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getGuoQiDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->guoQiDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIscurrent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getIsgif()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->missdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->show_method:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getThum_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->cid:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->U:Ljava/lang/String;

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->T:Ljava/lang/String;

    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->greeting:Ljava/lang/String;

    return-void
.end method

.method public setGuoQiDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->guoQiDate:Ljava/lang/String;

    return-void
.end method

.method public setIscurrent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    return-void
.end method

.method public setIsgif(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    return-void
.end method

.method public setMissdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->missdn:Ljava/lang/String;

    return-void
.end method

.method public setSetDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDate:Ljava/lang/String;

    return-void
.end method

.method public setShow_method(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->show_method:Ljava/lang/String;

    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->start_time:Ljava/lang/String;

    return-void
.end method

.method public setThum_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->Q:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
