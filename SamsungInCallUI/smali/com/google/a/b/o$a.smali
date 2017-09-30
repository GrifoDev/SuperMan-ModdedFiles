.class Lcom/google/a/b/o$a;
.super Lcom/google/a/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/o",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient c:Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/b/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/b/o",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/a/b/o$a;->c:Lcom/google/a/b/o;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/b/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/o$a;->c:Lcom/google/a/b/o;

    return-object v0
.end method

.method final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
