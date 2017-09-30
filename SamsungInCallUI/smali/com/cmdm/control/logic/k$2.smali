.class Lcom/cmdm/control/logic/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;

.field private final synthetic cp:Lcom/cmdm/control/bean/CRSInfo;

.field private final synthetic cq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    iput-object p3, p0, Lcom/cmdm/control/logic/k$2;->cq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    if-eqz v0, :cond_1

    const-string v0, "LXJ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDefaultFlag======"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XXXX1111======"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/download/b;

    invoke-direct {v1}, Lcom/cmdm/control/download/b;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XXXX======"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/k$2;->cp:Lcom/cmdm/control/bean/CRSInfo;

    iget-object v2, p0, Lcom/cmdm/control/logic/k$2;->cq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/logic/k;->a(Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    iget-object v0, p0, Lcom/cmdm/control/logic/k$2;->co:Lcom/cmdm/control/logic/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/k$2;->cq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/logic/k;->delete(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_0
.end method
