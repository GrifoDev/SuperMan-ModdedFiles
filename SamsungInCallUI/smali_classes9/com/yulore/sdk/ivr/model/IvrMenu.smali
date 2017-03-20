.class public Lcom/yulore/sdk/ivr/model/IvrMenu;
.super Ljava/lang/Object;
.source "IvrMenu.java"


# instance fields
.field private code:Ljava/lang/String;

.field private delay:I

.field private endTime:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;"
        }
    .end annotation
.end field

.field private moArea:Ljava/lang/String;

.field private mtArea:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ShortcutNode;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->delay:I

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->delay:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->items:Ljava/util/List;

    return-object v0
.end method

.method public getMoArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->moArea:Ljava/lang/String;

    return-object v0
.end method

.method public getMtArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->mtArea:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcuts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ShortcutNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->shortcuts:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->code:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->delay:I

    .line 29
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->endTime:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->items:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setMoArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "moArea"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->moArea:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMtArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "mtArea"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->mtArea:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->op:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setShortcuts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ShortcutNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ShortcutNode;>;"
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->shortcuts:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->startTime:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IvrMenu [op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->moArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mtArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->mtArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortcuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/IvrMenu;->shortcuts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
