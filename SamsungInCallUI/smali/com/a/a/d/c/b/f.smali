.class public Lcom/a/a/d/c/b/f;
.super Lcom/a/a/d/c/p;

# interfaces
.implements Lcom/a/a/d/c/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/c/p",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/a/a/d/c/b/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/d/c/p;-><init>(Lcom/a/a/d/c/l;)V

    return-void
.end method
