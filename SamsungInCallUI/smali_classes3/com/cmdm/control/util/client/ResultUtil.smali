.class public Lcom/cmdm/control/util/client/ResultUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dm:I

.field private dn:Ljava/lang/String;

.field private do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "resCode"    # I
    .param p2, "resMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    .local p3, "attachObj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/util/client/ResultUtil;->dm:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/util/client/ResultUtil;->dn:Ljava/lang/String;

    .line 15
    iput p1, p0, Lcom/cmdm/control/util/client/ResultUtil;->dm:I

    .line 16
    iput-object p2, p0, Lcom/cmdm/control/util/client/ResultUtil;->dn:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/cmdm/control/util/client/ResultUtil;->do:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public getAttachObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/util/client/ResultUtil;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public getResCode()I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    iget v0, p0, Lcom/cmdm/control/util/client/ResultUtil;->dm:I

    return v0
.end method

.method public getResMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/util/client/ResultUtil;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessed()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    const/4 v0, 0x1

    .line 21
    iget v1, p0, Lcom/cmdm/control/util/client/ResultUtil;->dm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResCode(I)V
    .locals 0
    .param p1, "resCode"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<TT;>;"
    iput p1, p0, Lcom/cmdm/control/util/client/ResultUtil;->dm:I

    .line 34
    return-void
.end method
