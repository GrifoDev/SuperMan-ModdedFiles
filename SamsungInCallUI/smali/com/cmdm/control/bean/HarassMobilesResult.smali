.class public Lcom/cmdm/control/bean/HarassMobilesResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "HarassMobilesResult"
.end annotation


# instance fields
.field public mobileList:Lcom/cmdm/control/bean/MobileList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mobileList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/MobileList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/MobileList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/HarassMobilesResult;->mobileList:Lcom/cmdm/control/bean/MobileList;

    return-void
.end method
