.class public Lcom/a/a/h/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/h/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/a/h/a/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/c",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h/a/b;->a:Lcom/a/a/h/a/c;

    iput p2, p0, Lcom/a/a/h/a/b;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/a/a/h/a/c$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/a/a/h/a/c$a;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p2}, Lcom/a/a/h/a/c$a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget v1, p0, Lcom/a/a/h/a/b;->b:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-interface {p2, v3}, Lcom/a/a/h/a/c$a;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a/b;->a:Lcom/a/a/h/a/c;

    invoke-interface {v0, p1, p2}, Lcom/a/a/h/a/c;->a(Ljava/lang/Object;Lcom/a/a/h/a/c$a;)Z

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/h/a/c$a;)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/h/a/b;->a(Landroid/graphics/drawable/Drawable;Lcom/a/a/h/a/c$a;)Z

    move-result v0

    return v0
.end method
