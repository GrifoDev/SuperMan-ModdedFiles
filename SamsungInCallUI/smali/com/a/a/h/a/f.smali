.class public Lcom/a/a/h/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/a/c",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/h/a/f$a;


# direct methods
.method constructor <init>(Lcom/a/a/h/a/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h/a/f;->a:Lcom/a/a/h/a/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/a/a/h/a/c$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/a/a/h/a/c$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/a/a/h/a/c$a;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/a/a/h/a/f;->a:Lcom/a/a/h/a/f$a;

    invoke-interface {v1}, Lcom/a/a/h/a/f$a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
