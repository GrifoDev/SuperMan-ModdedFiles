.class public Lcom/cmdm/control/bean/GetPrizeListResponse;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetPrizeListResponse"
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "address"
    .end annotation
.end field

.field public prizeInfos:Lcom/cmdm/control/bean/PrizeInfoList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "prizeInfos"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
