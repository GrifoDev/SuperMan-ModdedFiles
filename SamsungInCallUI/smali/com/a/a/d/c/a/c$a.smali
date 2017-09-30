.class public Lcom/a/a/d/c/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/a/c;
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
        "Ljava/lang/Integer;",
        "Landroid/os/ParcelFileDescriptor;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/c/c;",
            ")",
            "Lcom/a/a/d/c/l",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/c/a/c;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/a/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/c/l;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/a/a/d/c/a/c;-><init>(Landroid/content/Context;Lcom/a/a/d/c/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
