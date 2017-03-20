.class public Lcom/cmdm/control/bean/GetResourceListResult;
.super Lcom/cmdm/control/bean/BaseBean;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetResourceListResult"
.end annotation


# instance fields
.field public resourceList:Lcom/cmdm/control/bean/ResourceList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resourceList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
