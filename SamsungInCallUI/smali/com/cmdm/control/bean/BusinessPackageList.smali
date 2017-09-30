.class public Lcom/cmdm/control/bean/BusinessPackageList;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "businessPackageList"
.end annotation


# instance fields
.field public businessPackageList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "businessPackage"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackageList;->businessPackageList:Ljava/util/List;

    return-object v0
.end method

.method public setBusinessPackageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackageList;->businessPackageList:Ljava/util/List;

    return-void
.end method
