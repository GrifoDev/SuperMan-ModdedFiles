.class Lcom/cmdm/control/logic/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->bA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;

.field private final synthetic cr:Lcom/cmdm/control/download/b;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/download/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/logic/k$4;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$4;->cr:Lcom/cmdm/control/download/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/logic/k$4;->co:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->bz()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/DefaultCRSInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cmdm/control/logic/k$4;->cr:Lcom/cmdm/control/download/b;

    iget-object v2, v0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->saveSystemDefaultUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
