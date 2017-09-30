.class Lcom/cmdm/control/download/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic br:Lcom/cmdm/control/download/a;

.field bt:Lcom/cmdm/control/download/a$c;


# direct methods
.method public constructor <init>(Lcom/cmdm/control/download/a;Lcom/cmdm/control/download/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    iget-boolean v0, v0, Lcom/cmdm/control/download/a;->bo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-static {v0}, Lcom/cmdm/control/download/a;->b(Lcom/cmdm/control/download/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-static {v0}, Lcom/cmdm/control/download/a;->b(Lcom/cmdm/control/download/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->c(Lcom/cmdm/control/download/a;)Lcom/cmdm/control/download/Interface/d;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v2, v2, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmdm/control/download/Interface/d;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmdm/control/download/a$c;->bv:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    iget-object v2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v2, v2, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v3, v3, Lcom/cmdm/control/download/a$c;->bv:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget v1, v1, Lcom/cmdm/control/download/a$c;->width:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget v1, v1, Lcom/cmdm/control/download/a$c;->height:I

    if-lez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget v1, v1, Lcom/cmdm/control/download/a$c;->width:I

    iget-object v2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget v2, v2, Lcom/cmdm/control/download/a$c;->height:I

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/download/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/cmdm/control/download/a;->bb()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iget-object v2, v2, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    iget-object v2, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/download/a;->a(Lcom/cmdm/control/download/a$c;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iput-object v0, v1, Lcom/cmdm/control/download/a$c;->bx:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-static {v0}, Lcom/cmdm/control/download/a;->d(Lcom/cmdm/control/download/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->bt:Lcom/cmdm/control/download/a$c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmdm/control/download/a$b;->br:Lcom/cmdm/control/download/a;

    invoke-static {v1}, Lcom/cmdm/control/download/a;->d(Lcom/cmdm/control/download/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2
.end method
