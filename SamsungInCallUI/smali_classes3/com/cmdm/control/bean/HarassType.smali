.class public Lcom/cmdm/control/bean/HarassType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "HarassType"
.end annotation


# instance fields
.field private Z:Z

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field public sysOrder:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sysOrder"
    .end annotation
.end field

.field public typeBackgroundUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeBackgroundUrl"
    .end annotation
.end field

.field public typeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeId"
    .end annotation
.end field

.field public typeName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeName"
    .end annotation
.end field

.field public typeThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeThumbnailUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/HarassType;->Z:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmdm/control/bean/HarassType;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getMarknum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmdm/control/bean/HarassType;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/cmdm/control/bean/HarassType;->Z:Z

    return v0
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cmdm/control/bean/HarassType;->ac:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMarknum(Ljava/lang/String;)V
    .locals 0
    .param p1, "marknum"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cmdm/control/bean/HarassType;->ab:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/cmdm/control/bean/HarassType;->Z:Z

    .line 77
    return-void
.end method
