.class public Lcom/cmdm/control/bean/GetMatchListResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetMatchListResult"
.end annotation


# instance fields
.field public matchList:Lcom/cmdm/control/bean/MatchList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "matchList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
