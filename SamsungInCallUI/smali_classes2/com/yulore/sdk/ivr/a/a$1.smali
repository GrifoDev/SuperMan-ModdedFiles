.class Lcom/yulore/sdk/ivr/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulore/sdk/ivr/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yulore/a/a/e/e;

.field final synthetic b:Lcom/yulore/sdk/ivr/a/a;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/a/a;Lcom/yulore/a/a/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    iput-object p2, p0, Lcom/yulore/sdk/ivr/a/a$1;->a:Lcom/yulore/a/a/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "YuloreIVR"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, " prepared to delete all old data except zip file "

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/a/a/e/c;->d(Ljava/io/File;)V

    const-string v0, "YuloreIVR"

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " start copy assets file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v3}, Lcom/yulore/sdk/ivr/a/a;->b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v3}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yulore/a/a/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "YuloreIVR"

    const-string v2, " copy offline data packet from assets folder, copy offline data packet from user direction "

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->c(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/yulore/sdk/ivr/e/d;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/a/a;->c(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/c;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/a/a;->c(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/a/a/e/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "YuloreIVR"

    const-string v1, "copy offline data packet successfully, prepared to unzip the file"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/a/a;->b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/e/g;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->a:Lcom/yulore/a/a/e/e;

    const-string v1, "exists"

    invoke-virtual {v0, v1, v4}, Lcom/yulore/a/a/e/e;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->a:Lcom/yulore/a/a/e/e;

    const-string v1, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a$1;->a:Lcom/yulore/a/a/e/e;

    const-string v1, "version"

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/a/a;->b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/a/a/e/c;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yulore/a/a/e/e;->b(Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a$1;->b:Lcom/yulore/sdk/ivr/a/a;

    invoke-static {v2}, Lcom/yulore/sdk/ivr/a/a;->b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yulore/a/a/e/c;->a(Ljava/io/File;)Z

    :cond_1
    return-void
.end method
