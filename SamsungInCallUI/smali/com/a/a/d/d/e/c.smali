.class public Lcom/a/a/d/d/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/e/c$b;,
        Lcom/a/a/d/d/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Lcom/a/a/d/c/g;",
        "Lcom/a/a/d/d/e/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/e/c$b;

.field private static final b:Lcom/a/a/d/d/e/c$a;


# instance fields
.field private final c:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/d/b/a/c;

.field private final f:Lcom/a/a/d/d/e/c$b;

.field private final g:Lcom/a/a/d/d/e/c$a;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/e/c$b;

    invoke-direct {v0}, Lcom/a/a/d/d/e/c$b;-><init>()V

    sput-object v0, Lcom/a/a/d/d/e/c;->a:Lcom/a/a/d/d/e/c$b;

    new-instance v0, Lcom/a/a/d/d/e/c$a;

    invoke-direct {v0}, Lcom/a/a/d/d/e/c$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/e/c;->b:Lcom/a/a/d/d/e/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/b/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Lcom/a/a/d/b/a/c;",
            ")V"
        }
    .end annotation

    sget-object v4, Lcom/a/a/d/d/e/c;->a:Lcom/a/a/d/d/e/c$b;

    sget-object v5, Lcom/a/a/d/d/e/c;->b:Lcom/a/a/d/d/e/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/d/e/c;-><init>(Lcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/e/c$b;Lcom/a/a/d/d/e/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/e/c$b;Lcom/a/a/d/d/e/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Lcom/a/a/d/b/a/c;",
            "Lcom/a/a/d/d/e/c$b;",
            "Lcom/a/a/d/d/e/c$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/e/c;->c:Lcom/a/a/d/e;

    iput-object p2, p0, Lcom/a/a/d/d/e/c;->d:Lcom/a/a/d/e;

    iput-object p3, p0, Lcom/a/a/d/d/e/c;->e:Lcom/a/a/d/b/a/c;

    iput-object p4, p0, Lcom/a/a/d/d/e/c;->f:Lcom/a/a/d/d/e/c$b;

    iput-object p5, p0, Lcom/a/a/d/d/e/c;->g:Lcom/a/a/d/d/e/c$a;

    return-void
.end method

.method private a(Lcom/a/a/d/c/g;II[B)Lcom/a/a/d/d/e/a;
    .locals 1

    invoke-virtual {p1}, Lcom/a/a/d/c/g;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/d/d/e/c;->b(Lcom/a/a/d/c/g;II[B)Lcom/a/a/d/d/e/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/d/d/e/c;->b(Lcom/a/a/d/c/g;II)Lcom/a/a/d/d/e/a;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;II)Lcom/a/a/d/d/e/a;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d/d/e/c;->d:Lcom/a/a/d/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->e()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v0, Lcom/a/a/d/d/e/a;

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/d/e/a;-><init>(Lcom/a/a/d/b/l;Lcom/a/a/d/b/l;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/a/a/d/d/a/c;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/d/d/e/c;->e:Lcom/a/a/d/b/a/c;

    invoke-direct {v2, v0, v3}, Lcom/a/a/d/d/a/c;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)V

    new-instance v0, Lcom/a/a/d/d/e/a;

    invoke-direct {v0, v2, v1}, Lcom/a/a/d/d/e/a;-><init>(Lcom/a/a/d/b/l;Lcom/a/a/d/b/l;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/a/a/d/c/g;II)Lcom/a/a/d/d/e/a;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d/d/e/c;->c:Lcom/a/a/d/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/a/a/d/d/e/a;

    invoke-direct {v0, v2, v1}, Lcom/a/a/d/d/e/a;-><init>(Lcom/a/a/d/b/l;Lcom/a/a/d/b/l;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/a/a/d/c/g;II[B)Lcom/a/a/d/d/e/a;
    .locals 4

    iget-object v0, p0, Lcom/a/a/d/d/e/c;->g:Lcom/a/a/d/d/e/c$a;

    invoke-virtual {p1}, Lcom/a/a/d/c/g;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/a/a/d/d/e/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lcom/a/a/d/d/e/c;->f:Lcom/a/a/d/d/e/c$b;

    invoke-virtual {v0, v1}, Lcom/a/a/d/d/e/c$b;->a(Ljava/io/InputStream;)Lcom/a/a/d/d/a/l$a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x0

    sget-object v3, Lcom/a/a/d/d/a/l$a;->a:Lcom/a/a/d/d/a/l$a;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lcom/a/a/d/d/e/c;->a(Ljava/io/InputStream;II)Lcom/a/a/d/d/e/a;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/d/c/g;

    invoke-virtual {p1}, Lcom/a/a/d/c/g;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/a/a/d/d/e/c;->b(Lcom/a/a/d/c/g;II)Lcom/a/a/d/d/e/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/c/g;II)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/g;",
            "II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/a;->a()Lcom/a/a/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/j/a;->b()[B

    move-result-object v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/a/a/d/d/e/c;->a(Lcom/a/a/d/c/g;II[B)Lcom/a/a/d/d/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/a/a/j/a;->a([B)Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/a/a/d/d/e/b;

    invoke-direct {v0, v2}, Lcom/a/a/d/d/e/b;-><init>(Lcom/a/a/d/d/e/a;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/a/a/j/a;->a([B)Z

    throw v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Lcom/a/a/d/c/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/e/c;->a(Lcom/a/a/d/c/g;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/e/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/a/a/d/d/e/c;->d:Lcom/a/a/d/e;

    invoke-interface {v1}, Lcom/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/e/c;->c:Lcom/a/a/d/e;

    invoke-interface {v1}, Lcom/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/e/c;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/c;->h:Ljava/lang/String;

    return-object v0
.end method
