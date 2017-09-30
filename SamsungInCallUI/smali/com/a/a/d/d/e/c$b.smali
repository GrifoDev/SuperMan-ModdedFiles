.class Lcom/a/a/d/d/e/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/a/a/d/d/a/l$a;
    .locals 1

    new-instance v0, Lcom/a/a/d/d/a/l;

    invoke-direct {v0, p1}, Lcom/a/a/d/d/a/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/a/a/d/d/a/l;->b()Lcom/a/a/d/d/a/l$a;

    move-result-object v0

    return-object v0
.end method
