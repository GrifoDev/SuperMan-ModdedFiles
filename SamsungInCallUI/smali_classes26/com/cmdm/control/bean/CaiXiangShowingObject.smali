.class public Lcom/cmdm/control/bean/CaiXiangShowingObject;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    .line 96
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getGreeting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->greeting:Ljava/lang/String;

    return-object v0
.end method

.method public getGuoQiDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->guoQiDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIscurrent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getIsgif()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getMissdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->missdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->show_method:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getThum_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->cid:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->description:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_time"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->U:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->T:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setGreeting(Ljava/lang/String;)V
    .locals 0
    .param p1, "greeting"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->greeting:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setGuoQiDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "guoQiDate"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->guoQiDate:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setIscurrent(Ljava/lang/String;)V
    .locals 0
    .param p1, "iscurrent"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->R:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setIsgif(Ljava/lang/String;)V
    .locals 0
    .param p1, "isgif"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->S:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setMissdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->missdn:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSetDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "setDate"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDate:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setShow_method(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_method"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->show_method:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "start_time"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->start_time:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setThum_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "thum_url"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->Q:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->uid:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiXiangShowingObject;->url:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string v0, ""

    return-object v0
.end method
