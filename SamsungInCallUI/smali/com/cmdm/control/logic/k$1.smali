.class Lcom/cmdm/control/logic/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->init(I)Lcom/cmdm/control/util/client/ResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/logic/k$1;->co:Lcom/cmdm/control/logic/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/cmdm/control/logic/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/k$1;->co:Lcom/cmdm/control/logic/k;

    iget-object v1, v1, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->x()Lcom/cmdm/control/util/client/ResultUtil;

    return-void
.end method
