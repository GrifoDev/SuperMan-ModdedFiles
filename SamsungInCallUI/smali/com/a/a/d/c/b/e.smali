.class public Lcom/a/a/d/c/b/e;
.super Lcom/a/a/d/c/n;

# interfaces
.implements Lcom/a/a/d/c/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/c/n",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/a/a/d/c/b/d",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/a/a/d/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/c/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/a/a/d/c/n;-><init>(Landroid/content/Context;Lcom/a/a/d/c/l;)V

    return-void
.end method
