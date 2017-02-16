.class public Lcom/cmdm/control/biz/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field at:Lcom/cmdm/control/logic/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/cmdm/control/logic/l;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    .line 21
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "product_id"    # Ljava/lang/String;
    .param p2, "behaviorType"    # Ljava/lang/String;
    .param p3, "objcetid"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/l;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 39
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public ab(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v1, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    .line 28
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/l;->ab(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 29
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    return-object v0
.end method
