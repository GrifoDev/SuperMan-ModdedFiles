.class public Lcom/cmdm/control/biz/n;
.super Ljava/lang/Object;


# instance fields
.field at:Lcom/cmdm/control/logic/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/l;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/l;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public ab(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/n;->at:Lcom/cmdm/control/logic/l;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/l;->ab(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
