.class public Lcom/a/a/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/a/b;->a:[B

    iput-object p2, p0, Lcom/a/a/d/a/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/a/a/i;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/d/a/b;->b(Lcom/a/a/i;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/a/a/i;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/d/a/b;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
