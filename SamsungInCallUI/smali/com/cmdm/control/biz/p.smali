.class public Lcom/cmdm/control/biz/p;
.super Ljava/lang/Object;


# instance fields
.field av:Lcom/cmdm/control/logic/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/n;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/p;->av:Lcom/cmdm/control/logic/n;

    return-void
.end method


# virtual methods
.method public ac(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetShareInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/p;->av:Lcom/cmdm/control/logic/n;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/n;->ac(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
