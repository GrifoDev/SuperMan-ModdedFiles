.class Lcom/cmdm/control/logic/k$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->Z(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aK:Ljava/lang/String;

.field final synthetic co:Lcom/cmdm/control/logic/k;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/logic/k$5;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$5;->aK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/cmdm/control/download/b;

    invoke-direct {v0}, Lcom/cmdm/control/download/b;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/cmdm/control/logic/k$5;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/k$5;->aK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tel.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5220\u9664\u65e7\u7684\u5f52\u5c5e\u5730\u6570\u636e\u72b6\u6001:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "tel.bin"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/file/FileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u91cd\u547d\u540d\u65b0\u7684\u5f52\u5c5e\u5730\u6570\u636e\u72b6\u6001:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u65e7\u7684\u5f52\u5c5e\u5730\u6570\u636e\u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u5f02\u5e38\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cmdm/control/logic/k;->bC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
