.class Lcom/cmdm/control/logic/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .locals 6

    iget-object v4, p0, Lcom/cmdm/control/logic/k$4;->co:Lcom/cmdm/control/logic/k;

    invoke-virtual {v4}, Lcom/cmdm/control/logic/k;->bz()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/DefaultCRSInfo;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/cmdm/control/logic/k$4;->cr:Lcom/cmdm/control/download/b;

    iget-object v5, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/client/Setting;->saveSystemDefaultUrl(Ljava/lang/String;)V
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
