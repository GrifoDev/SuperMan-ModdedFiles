.class public Lcom/cmdm/control/bean/CavassResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CavassResult"
.end annotation


# instance fields
.field public star:Lcom/cmdm/control/bean/Star;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "star"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
