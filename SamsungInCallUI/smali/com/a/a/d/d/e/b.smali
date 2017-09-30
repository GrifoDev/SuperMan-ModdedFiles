.class public Lcom/a/a/d/d/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/l",
        "<",
        "Lcom/a/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/e/a;


# direct methods
.method public constructor <init>(Lcom/a/a/d/d/e/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/d/d/e/b;->a:Lcom/a/a/d/d/e/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/d/e/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/e/b;->a:Lcom/a/a/d/d/e/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/d/d/e/b;->a()Lcom/a/a/d/d/e/a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/e/b;->a:Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->a()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/e/b;->a:Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->b()Lcom/a/a/d/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/b;->a:Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->c()Lcom/a/a/d/b/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    :cond_1
    return-void
.end method
