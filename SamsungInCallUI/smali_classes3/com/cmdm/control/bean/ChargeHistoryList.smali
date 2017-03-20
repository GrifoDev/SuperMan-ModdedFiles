.class public Lcom/cmdm/control/bean/ChargeHistoryList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ChargeHistoryList"
.end annotation


# instance fields
.field public chargeHistoryList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "chargeHistory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ChargeHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeHistoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ChargeHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistoryList;->chargeHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setChargeHistoryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ChargeHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "chargeHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ChargeHistory;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistoryList;->chargeHistoryList:Ljava/util/ArrayList;

    .line 45
    return-void
.end method
