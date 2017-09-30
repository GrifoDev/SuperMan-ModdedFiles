.class public Lcom/a/a/d/c/a/c;
.super Lcom/a/a/d/c/n;

# interfaces
.implements Lcom/a/a/d/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/c/n",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/a/a/d/c/a/b",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/a/a/d/c/n;-><init>(Landroid/content/Context;Lcom/a/a/d/c/l;)V

    return-void
.end method
