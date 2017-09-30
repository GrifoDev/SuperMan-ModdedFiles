.class public Lcom/cmdm/control/bean/InterestLableResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "InterestLableResult"
.end annotation


# instance fields
.field public lableList:Lcom/cmdm/control/bean/LableList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "lableList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/LableList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/LableList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/InterestLableResult;->lableList:Lcom/cmdm/control/bean/LableList;

    return-void
.end method
