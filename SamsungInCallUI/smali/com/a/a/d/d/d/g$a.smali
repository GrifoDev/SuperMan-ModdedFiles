.class Lcom/a/a/d/d/d/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/c",
        "<",
        "Lcom/a/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/a;


# direct methods
.method public constructor <init>(Lcom/a/a/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/d/g$a;->a:Lcom/a/a/b/a;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/a/a/i;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/d/d/d/g$a;->b(Lcom/a/a/i;)Lcom/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/a/a/i;)Lcom/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/d/g$a;->a:Lcom/a/a/b/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/d/g$a;->a:Lcom/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/b/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
