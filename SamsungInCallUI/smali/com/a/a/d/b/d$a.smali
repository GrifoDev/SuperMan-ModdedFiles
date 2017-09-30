.class Lcom/a/a/d/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;Z)Lcom/a/a/d/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/b/l",
            "<TR;>;Z)",
            "Lcom/a/a/d/b/h",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/b/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/b/h;-><init>(Lcom/a/a/d/b/l;Z)V

    return-object v0
.end method
