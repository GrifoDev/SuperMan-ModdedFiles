.class Lcom/b/a/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gsma/services/rcs/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$b;)Lcom/gsma/services/rcs/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a$b;

.field final synthetic b:Lcom/b/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/a$1;->b:Lcom/b/a/a/a/a;

    iput-object p2, p0, Lcom/b/a/a/a/a$1;->a:Lcom/b/a/a/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/a$1;->b:Lcom/b/a/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a$1;->a:Lcom/b/a/a/a/a$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/a/a/a/a$1;->b:Lcom/b/a/a/a/a;

    iget-object v1, p0, Lcom/b/a/a/a/a$1;->a:Lcom/b/a/a/a/a$b;

    invoke-static {v0, v1}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;)V

    return-void
.end method

.method public onServiceDisconnected(Lcom/gsma/services/rcs/f$a;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/a$1;->b:Lcom/b/a/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a$1;->a:Lcom/b/a/a/a/a$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/a/a/a/a$1;->b:Lcom/b/a/a/a/a;

    iget-object v1, p0, Lcom/b/a/a/a/a$1;->a:Lcom/b/a/a/a/a$b;

    invoke-static {v0, v1, p1}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;Lcom/b/a/a/a/a$b;Lcom/gsma/services/rcs/f$a;)V

    return-void
.end method
