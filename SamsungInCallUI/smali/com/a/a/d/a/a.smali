.class public abstract Lcom/a/a/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/a/a;->b:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/a/a/d/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Lcom/a/a/i;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/i;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/a/a;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/a/a/d/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/d/a/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/a/a/d/a/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AssetUriFetcher"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AssetUriFetcher"

    const-string v2, "Failed to close data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
