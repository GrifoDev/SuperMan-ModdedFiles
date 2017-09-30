.class public Lcom/cmdm/control/bean/ConsumeHistory;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ConsumeHistory"
.end annotation


# instance fields
.field public consumeCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumeCount"
    .end annotation
.end field

.field public consumeDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumeDate"
    .end annotation
.end field

.field public consumeTypeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumeTypeId"
    .end annotation
.end field

.field public consumeTypeName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumeTypeName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConsumeCount()I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeCount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeCount:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConsumeDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeDate:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumeCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeCount:Ljava/lang/String;

    return-void
.end method

.method public setConsumeDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeDate:Ljava/lang/String;

    return-void
.end method

.method public setConsumeTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeTypeId:Ljava/lang/String;

    return-void
.end method

.method public setConsumeTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistory;->consumeTypeName:Ljava/lang/String;

    return-void
.end method
