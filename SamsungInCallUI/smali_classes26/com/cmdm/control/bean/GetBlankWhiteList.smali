.class public Lcom/cmdm/control/bean/GetBlankWhiteList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetBlankWhiteList"
.end annotation


# instance fields
.field public listIsdn:Lcom/cmdm/control/bean/ListIsdn;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "listIsdn"
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultCode"
    .end annotation
.end field

.field public resultDesc:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resultDesc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListIsdn()Lcom/cmdm/control/bean/ListIsdn;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->listIsdn:Lcom/cmdm/control/bean/ListIsdn;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setListIsdn(Lcom/cmdm/control/bean/ListIsdn;)V
    .locals 0
    .param p1, "listIsdn"    # Lcom/cmdm/control/bean/ListIsdn;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->listIsdn:Lcom/cmdm/control/bean/ListIsdn;

    .line 64
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultCode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setResultDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultDesc"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultDesc:Ljava/lang/String;

    .line 56
    return-void
.end method
