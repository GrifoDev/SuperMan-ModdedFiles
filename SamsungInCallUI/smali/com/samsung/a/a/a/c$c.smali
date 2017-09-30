.class public abstract Lcom/samsung/a/a/a/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/a/a/a/c$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/a/a/a/c$c;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/a/a/a/c$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/c$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$c;->d()Lcom/samsung/a/a/a/c$c;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ts"

    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$c;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/c$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    iget-object v0, p0, Lcom/samsung/a/a/a/c$c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "pn"

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pn"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/c$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$c;->d()Lcom/samsung/a/a/a/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Lcom/samsung/a/a/a/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "pnd"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/c$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$c;->d()Lcom/samsung/a/a/a/c$c;

    move-result-object v0

    return-object v0
.end method
