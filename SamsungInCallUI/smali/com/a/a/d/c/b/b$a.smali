.class public Lcom/a/a/d/c/b/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/m",
        "<[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/d/c/c;)Lcom/a/a/d/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/c/c;",
            ")",
            "Lcom/a/a/d/c/l",
            "<[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/c/b/b;

    invoke-direct {v0}, Lcom/a/a/d/c/b/b;-><init>()V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
