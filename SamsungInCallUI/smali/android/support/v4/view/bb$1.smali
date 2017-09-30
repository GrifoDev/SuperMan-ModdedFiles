.class final Landroid/support/v4/view/bb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/bb;->a(Landroid/view/View;Landroid/support/v4/view/be;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/be;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/be;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/bb$1;->a:Landroid/support/v4/view/be;

    iput-object p2, p0, Landroid/support/v4/view/bb$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/bb$1;->a:Landroid/support/v4/view/be;

    iget-object v1, p0, Landroid/support/v4/view/bb$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/be;->a(Landroid/view/View;)V

    return-void
.end method
