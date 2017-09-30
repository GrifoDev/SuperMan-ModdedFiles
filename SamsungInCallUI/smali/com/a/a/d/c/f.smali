.class public Lcom/a/a/d/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/l",
        "<TA;",
        "Lcom/a/a/d/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/d/c/f;->a:Lcom/a/a/d/c/l;

    iput-object p2, p0, Lcom/a/a/d/c/f;->b:Lcom/a/a/d/c/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/a/a/d/a/c",
            "<",
            "Lcom/a/a/d/c/g;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d/c/f;->a:Lcom/a/a/d/c/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/d/c/f;->a:Lcom/a/a/d/c/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/d/c/l;->a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/a/a/d/c/f;->b:Lcom/a/a/d/c/l;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/a/a/d/c/f;->b:Lcom/a/a/d/c/l;

    invoke-interface {v2, p1, p2, p3}, Lcom/a/a/d/c/l;->a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/a/a/d/c/f$a;

    invoke-direct {v1, v0, v2}, Lcom/a/a/d/c/f$a;-><init>(Lcom/a/a/d/a/c;Lcom/a/a/d/a/c;)V

    :cond_1
    return-object v1

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
