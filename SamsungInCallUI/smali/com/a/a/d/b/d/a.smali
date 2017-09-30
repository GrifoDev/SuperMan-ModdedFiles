.class public final Lcom/a/a/d/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/d/b/b/h;

.field private final b:Lcom/a/a/d/b/a/c;

.field private final c:Lcom/a/a/d/a;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/a/a/d/b/d/a;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/a/a/d/b/d/a;->a:Lcom/a/a/d/b/b/h;

    iput-object p2, p0, Lcom/a/a/d/b/d/a;->b:Lcom/a/a/d/b/a/c;

    iput-object p3, p0, Lcom/a/a/d/b/d/a;->c:Lcom/a/a/d/a;

    return-void
.end method
