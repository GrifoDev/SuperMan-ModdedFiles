.class public Lcom/cmdm/control/bean/UserTotalCost;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "UserTotalCost"
.end annotation


# instance fields
.field public costLimit:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "costLimit"
    .end annotation
.end field

.field public totalCost:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "totalCost"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostLimit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserTotalCost;->costLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/UserTotalCost;->totalCost:Ljava/lang/String;

    return-object v0
.end method

.method public setCostLimit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserTotalCost;->costLimit:Ljava/lang/String;

    return-void
.end method

.method public setTotalCost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/UserTotalCost;->totalCost:Ljava/lang/String;

    return-void
.end method
