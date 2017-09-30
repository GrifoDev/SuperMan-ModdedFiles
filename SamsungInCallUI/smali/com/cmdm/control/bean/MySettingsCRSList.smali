.class public Lcom/cmdm/control/bean/MySettingsCRSList;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MySettingsCRSList"
.end annotation


# instance fields
.field public mySettingsCRSList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "MySettingsCRS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/MySettingsCRS;",
            ">;"
        }
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMySettingsCRSList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/MySettingsCRS;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->mySettingsCRSList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setMySettingsCRSList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/MySettingsCRS;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->mySettingsCRSList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MySettingsCRSList;->range:Ljava/lang/String;

    return-void
.end method
