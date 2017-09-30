.class public Lcom/a/a/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/g/f",
        "<TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/g/b",
            "<TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/l;Lcom/a/a/d/d/f/c;Lcom/a/a/g/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;",
            "Lcom/a/a/g/b",
            "<TT;TZ;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/g/e;->a:Lcom/a/a/d/c/l;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/a/a/g/e;->b:Lcom/a/a/d/d/f/c;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lcom/a/a/g/e;->c:Lcom/a/a/g/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->c:Lcom/a/a/g/b;

    invoke-interface {v0}, Lcom/a/a/g/b;->a()Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->c:Lcom/a/a/g/b;

    invoke-interface {v0}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->c:Lcom/a/a/g/b;

    invoke-interface {v0}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/a/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/f",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->c:Lcom/a/a/g/b;

    invoke-interface {v0}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/d/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->a:Lcom/a/a/d/c/l;

    return-object v0
.end method

.method public f()Lcom/a/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/g/e;->b:Lcom/a/a/d/d/f/c;

    return-object v0
.end method
