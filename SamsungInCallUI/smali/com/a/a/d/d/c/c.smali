.class public Lcom/a/a/d/d/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/c/c$a;


# instance fields
.field private b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/d/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/c/c$a;

    invoke-direct {v0}, Lcom/a/a/d/d/c/c$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/c/c;->a:Lcom/a/a/d/d/c/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/d/c/c;->a:Lcom/a/a/d/d/c/c$a;

    invoke-direct {p0, p1, v0}, Lcom/a/a/d/d/c/c;-><init>(Lcom/a/a/d/e;Lcom/a/a/d/d/c/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/e;Lcom/a/a/d/d/c/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/a/a/d/d/c/c$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/c/c;->b:Lcom/a/a/d/e;

    iput-object p2, p0, Lcom/a/a/d/d/c/c;->c:Lcom/a/a/d/d/c/c$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/a/a/d/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/d/c/c;->c:Lcom/a/a/d/d/c/c$a;

    invoke-virtual {v0, p1}, Lcom/a/a/d/d/c/c$a;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/d/d/c/c;->b:Lcom/a/a/d/e;

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/c/c;->a(Ljava/io/File;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
