.class public final Lcom/a/a/j$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/j$b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/a/a/j$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/j$b$a;->d:Z

    iput-object p2, p0, Lcom/a/a/j$b$a;->b:Ljava/lang/Object;

    invoke-static {p2}, Lcom/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j$b$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/a/a/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/a/a/d",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v0, v0, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v0}, Lcom/a/a/j;->e(Lcom/a/a/j;)Lcom/a/a/j$c;

    move-result-object v10

    new-instance v0, Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v1, v1, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v1}, Lcom/a/a/j;->a(Lcom/a/a/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v2, v2, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v2}, Lcom/a/a/j;->b(Lcom/a/a/j;)Lcom/a/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/j$b$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    invoke-static {v4}, Lcom/a/a/j$b;->a(Lcom/a/a/j$b;)Lcom/a/a/d/c/l;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    invoke-static {v5}, Lcom/a/a/j$b;->b(Lcom/a/a/j$b;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v6, v6, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v6}, Lcom/a/a/j;->c(Lcom/a/a/j;)Lcom/a/a/e/m;

    move-result-object v7

    iget-object v6, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v6, v6, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v6}, Lcom/a/a/j;->d(Lcom/a/a/j;)Lcom/a/a/e/g;

    move-result-object v8

    iget-object v6, p0, Lcom/a/a/j$b$a;->a:Lcom/a/a/j$b;

    iget-object v6, v6, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-static {v6}, Lcom/a/a/j;->e(Lcom/a/a/j;)Lcom/a/a/j$c;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/a/a/d;-><init>(Landroid/content/Context;Lcom/a/a/g;Ljava/lang/Class;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/e/m;Lcom/a/a/e/g;Lcom/a/a/j$c;)V

    invoke-virtual {v10, v0}, Lcom/a/a/j$c;->a(Lcom/a/a/c;)Lcom/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/a/a/d;

    iget-boolean v1, p0, Lcom/a/a/j$b$a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/j$b$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/a/a/d;->b(Ljava/lang/Object;)Lcom/a/a/c;

    :cond_0
    return-object v0
.end method
