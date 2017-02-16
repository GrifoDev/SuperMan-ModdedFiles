.class public Lcom/cmdm/control/bean/GainIntegralLogList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "gainIntegralLogList"
.end annotation


# instance fields
.field public gainIntegralLogList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "gainIntegralLog"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/GainIntegralLog;",
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
.method public getGainIntegralLogList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/GainIntegralLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLogList;->gainIntegralLogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGainIntegralLogList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/GainIntegralLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "gainIntegralLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/GainIntegralLog;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLogList;->gainIntegralLogList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method
