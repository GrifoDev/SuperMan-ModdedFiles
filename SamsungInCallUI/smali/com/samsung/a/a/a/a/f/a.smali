.class public abstract Lcom/samsung/a/a/a/a/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/f/b;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/a/a/a/b;

.field protected c:Lcom/samsung/a/a/a/a/b/a;

.field protected d:Lcom/samsung/a/a/a/a/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/a/a/a/a/h/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/samsung/a/a/a/a/f/c/a;

.field protected f:Lcom/samsung/a/a/a/a/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/a/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-static {}, Lcom/samsung/a/a/a/a/c/d;->a()Lcom/samsung/a/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->f:Lcom/samsung/a/a/a/a/c/c;

    new-instance v0, Lcom/samsung/a/a/a/a/b/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    new-instance v0, Lcom/samsung/a/a/a/a/h/b;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->d:Lcom/samsung/a/a/a/a/h/b;

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/a/f/c/a;->a(Landroid/content/Context;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/a/f/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->e:Lcom/samsung/a/a/a/a/f/c/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "v"

    const-string v1, "1.8.33"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "la"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mcc"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mnc"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "dm"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "auid"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "aip"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "oip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "uid"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "do"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "av"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uv"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tz"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "at"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/b;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fv"

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Log Sender"

    const-string v1, "Device id is empty"

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a;->d:Lcom/samsung/a/a/a/a/h/b;

    sget-object v1, Lcom/samsung/a/a/a/a/h/b$a;->a:Lcom/samsung/a/a/a/a/h/b$a;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/a/a/a/a/h/b;->a(Ljava/util/Map;Lcom/samsung/a/a/a/a/h/b$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a;->e:Lcom/samsung/a/a/a/a/f/c/a;

    const-string v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/f/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/a/a/a/a/f/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/a/a/a/a/f/c/a;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
