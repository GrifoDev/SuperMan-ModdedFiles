.class Lcom/a/a/d/b/c$e;
.super Ljava/lang/ref/WeakReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/a/a/d/b/h",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c;


# direct methods
.method public constructor <init>(Lcom/a/a/d/c;Lcom/a/a/d/b/h;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "Lcom/a/a/d/b/h",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/a/a/d/b/h",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/a/a/d/b/c$e;->a:Lcom/a/a/d/c;

    return-void
.end method

.method static synthetic a(Lcom/a/a/d/b/c$e;)Lcom/a/a/d/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/c$e;->a:Lcom/a/a/d/c;

    return-object v0
.end method
