.class public Lcom/a/a/d/c/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/m",
        "<",
        "Lcom/a/a/d/c/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/k",
            "<",
            "Lcom/a/a/d/c/d;",
            "Lcom/a/a/d/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/c/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/a/a/d/c/k;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/d/c/b/a$a;->a:Lcom/a/a/d/c/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/d/c/c;)Lcom/a/a/d/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/c/c;",
            ")",
            "Lcom/a/a/d/c/l",
            "<",
            "Lcom/a/a/d/c/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/c/b/a;

    iget-object v1, p0, Lcom/a/a/d/c/b/a$a;->a:Lcom/a/a/d/c/k;

    invoke-direct {v0, v1}, Lcom/a/a/d/c/b/a;-><init>(Lcom/a/a/d/c/k;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
