.class Lcom/a/a/j$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/j$c;->a:Lcom/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c;)Lcom/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/a/a/c",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/j$c;->a:Lcom/a/a/j;

    invoke-static {v0}, Lcom/a/a/j;->f(Lcom/a/a/j;)Lcom/a/a/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/j$c;->a:Lcom/a/a/j;

    invoke-static {v0}, Lcom/a/a/j;->f(Lcom/a/a/j;)Lcom/a/a/j$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/j$a;->a(Lcom/a/a/c;)V

    :cond_0
    return-object p1
.end method
