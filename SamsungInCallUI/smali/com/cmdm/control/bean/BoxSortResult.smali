.class public Lcom/cmdm/control/bean/BoxSortResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BoxSortResult"
.end annotation


# instance fields
.field public boxSortList:Lcom/cmdm/control/bean/ContentSortList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxSortList"
    .end annotation
.end field

.field public offset:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:I
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
