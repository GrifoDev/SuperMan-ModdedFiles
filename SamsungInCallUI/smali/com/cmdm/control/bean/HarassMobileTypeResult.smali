.class public Lcom/cmdm/control/bean/HarassMobileTypeResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "HarassMobileTypeResult"
.end annotation


# instance fields
.field public harassTypeList:Lcom/cmdm/control/bean/HarassTypeList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "harassTypeList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/HarassTypeList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/HarassTypeList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/HarassMobileTypeResult;->harassTypeList:Lcom/cmdm/control/bean/HarassTypeList;

    return-void
.end method
