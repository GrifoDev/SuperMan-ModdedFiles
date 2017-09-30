.class public Lcom/a/a/b;
.super Lcom/a/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/a",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/a/a/j$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;Landroid/content/Context;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;Lcom/a/a/j$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/a/a/g;",
            "Lcom/a/a/e/m;",
            "Lcom/a/a/e/g;",
            "Lcom/a/a/j$c;",
            ")V"
        }
    .end annotation

    const-class v3, Lcom/a/a/d/d/e/a;

    const-class v4, Lcom/a/a/d/d/b/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/a/a/b;->a(Lcom/a/a/g;Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V

    iput-object p2, p0, Lcom/a/a/b;->g:Lcom/a/a/d/c/l;

    iput-object p3, p0, Lcom/a/a/b;->h:Lcom/a/a/d/c/l;

    iput-object p8, p0, Lcom/a/a/b;->i:Lcom/a/a/j$c;

    return-void
.end method

.method private static a(Lcom/a/a/g;Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;)",
            "Lcom/a/a/g/e",
            "<TA;",
            "Lcom/a/a/d/c/g;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/d/f/c;

    move-result-object p5

    :cond_1
    const-class v0, Lcom/a/a/d/c/g;

    invoke-virtual {p0, v0, p3}, Lcom/a/a/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/g/b;

    move-result-object v1

    new-instance v2, Lcom/a/a/d/c/f;

    invoke-direct {v2, p1, p2}, Lcom/a/a/d/c/f;-><init>(Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;)V

    new-instance v0, Lcom/a/a/g/e;

    invoke-direct {v0, v2, p5, v1}, Lcom/a/a/g/e;-><init>(Lcom/a/a/d/c/l;Lcom/a/a/d/d/f/c;Lcom/a/a/g/b;)V

    goto :goto_0
.end method


# virtual methods
.method public h()Lcom/a/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/f",
            "<TModelType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b;->i:Lcom/a/a/j$c;

    new-instance v1, Lcom/a/a/f;

    iget-object v2, p0, Lcom/a/a/b;->g:Lcom/a/a/d/c/l;

    iget-object v3, p0, Lcom/a/a/b;->i:Lcom/a/a/j$c;

    invoke-direct {v1, p0, v2, v3}, Lcom/a/a/f;-><init>(Lcom/a/a/c;Lcom/a/a/d/c/l;Lcom/a/a/j$c;)V

    invoke-virtual {v0, v1}, Lcom/a/a/j$c;->a(Lcom/a/a/c;)Lcom/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/a/a/f;

    return-object v0
.end method
