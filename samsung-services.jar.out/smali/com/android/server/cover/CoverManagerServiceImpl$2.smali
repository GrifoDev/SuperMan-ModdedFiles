.class Lcom/android/server/cover/CoverManagerServiceImpl$2;
.super Landroid/database/ContentObserver;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mScreenChangeObserver: URI is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenChangeObserver: URI changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get8(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get8(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get9(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-set0(Lcom/android/server/cover/CoverManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method
