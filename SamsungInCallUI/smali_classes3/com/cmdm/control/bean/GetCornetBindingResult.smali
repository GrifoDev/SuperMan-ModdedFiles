.class public Lcom/cmdm/control/bean/GetCornetBindingResult;
.super Lcom/cmdm/control/bean/BaseBean;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetCornetBindingResult"
.end annotation


# instance fields
.field public cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "cornetBindingList"
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
