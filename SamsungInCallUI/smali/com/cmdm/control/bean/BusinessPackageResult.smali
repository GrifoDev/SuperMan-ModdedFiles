.class public Lcom/cmdm/control/bean/BusinessPackageResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BusinessPackageResult"
.end annotation


# instance fields
.field public businessPackageList:Lcom/cmdm/control/bean/BusinessPackageList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessPackageList"
    .end annotation
.end field

.field public quotaDes:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "quotaDes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/BusinessPackageList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BusinessPackageList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/BusinessPackageResult;->businessPackageList:Lcom/cmdm/control/bean/BusinessPackageList;

    return-void
.end method


# virtual methods
.method public getBusinessPackageList()Lcom/cmdm/control/bean/BusinessPackageList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackageResult;->businessPackageList:Lcom/cmdm/control/bean/BusinessPackageList;

    return-object v0
.end method

.method public setBusinessPackageList(Lcom/cmdm/control/bean/BusinessPackageList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackageResult;->businessPackageList:Lcom/cmdm/control/bean/BusinessPackageList;

    return-void
.end method
