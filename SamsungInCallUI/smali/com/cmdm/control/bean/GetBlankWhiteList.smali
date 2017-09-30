.class public Lcom/cmdm/control/bean/GetBlankWhiteList;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListIsdn()Lcom/cmdm/control/bean/ListIsdn;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->listIsdn:Lcom/cmdm/control/bean/ListIsdn;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setListIsdn(Lcom/cmdm/control/bean/ListIsdn;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->listIsdn:Lcom/cmdm/control/bean/ListIsdn;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/GetBlankWhiteList;->resultDesc:Ljava/lang/String;

    return-void
.end method
