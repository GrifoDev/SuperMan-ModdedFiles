.class public Lcom/cmdm/control/bean/CaiyinSettingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CaiyinSettingResult"
.end annotation


# instance fields
.field public mCaiyinSettingResourceList:Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "caiyinSettingResourceList"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
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
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->mCaiyinSettingResourceList:Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->offset:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->range:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setmCaiyinSettingResourceList(Lcom/cmdm/control/bean/CaiyinSettingResourceList;)V
    .locals 0
    .param p1, "mCaiyinSettingResourceList"    # Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmdm/control/bean/CaiyinSettingResult;->mCaiyinSettingResourceList:Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    .line 53
    return-void
.end method
