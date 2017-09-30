.class Lcom/cmdm/control/dao/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/dao/h;->a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aI:Lcom/cmdm/control/dao/h;

.field private final synthetic aJ:Lcom/cmdm/control/http/c;

.field private final synthetic aK:Ljava/lang/String;

.field private final synthetic aL:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/cmdm/control/dao/h;Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/dao/h$1;->aI:Lcom/cmdm/control/dao/h;

    iput-object p2, p0, Lcom/cmdm/control/dao/h$1;->aJ:Lcom/cmdm/control/http/c;

    iput-object p3, p0, Lcom/cmdm/control/dao/h$1;->aK:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmdm/control/dao/h$1;->aL:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/dao/h$1;->aJ:Lcom/cmdm/control/http/c;

    iget-object v1, p0, Lcom/cmdm/control/dao/h$1;->aK:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/dao/h$1;->aL:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "url=\u6709\u6570\u636e\u4e86=="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmdm/control/dao/h$1;->aK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmdm/control/dao/h$1;->aK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
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
