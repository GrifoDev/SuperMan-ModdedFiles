.class public Lcom/cmdm/control/bean/Star;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Star"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b11d92284b39ec3L


# instance fields
.field public broadcast:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "broadcast"
    .end annotation
.end field

.field public isVote:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isVote"
    .end annotation
.end field

.field public starDetailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starDetailUrl"
    .end annotation
.end field

.field public starId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starId"
    .end annotation
.end field

.field public starName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starName"
    .end annotation
.end field

.field public starNickName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starNickName"
    .end annotation
.end field

.field public starSex:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starSex"
    .end annotation
.end field

.field public starSum:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starSum"
    .end annotation
.end field

.field public starTxt:Lcom/cmdm/control/bean/FzTopicTxt;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starTxt"
    .end annotation
.end field

.field public starUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "starUrl"
    .end annotation
.end field

.field public voteCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "voteCount"
    .end annotation
.end field

.field public wapUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "wapUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasVote()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/Star;->isVote:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/Star;->isVote:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
