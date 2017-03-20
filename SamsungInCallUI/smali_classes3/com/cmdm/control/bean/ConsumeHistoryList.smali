.class public Lcom/cmdm/control/bean/ConsumeHistoryList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ConsumeHistoryList"
.end annotation


# instance fields
.field public consumeHistoryList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "consumeHistory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ConsumeHistory;",
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
.method public getConsumeHistoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ConsumeHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmdm/control/bean/ConsumeHistoryList;->consumeHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setConsumeHistoryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ConsumeHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "consumeHistoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ConsumeHistory;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/ConsumeHistoryList;->consumeHistoryList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method
