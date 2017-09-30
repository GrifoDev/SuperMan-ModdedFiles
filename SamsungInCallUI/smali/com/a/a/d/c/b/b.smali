.class public Lcom/a/a/d/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/b/d",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/a/a/d/c/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/c/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 1

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/c/b/b;->a([BII)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lcom/a/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/a/a/d/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/a/b;

    iget-object v1, p0, Lcom/a/a/d/c/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/a/a/d/a/b;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
