.class final Landroid/support/v4/app/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/u;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/u$b;Landroid/view/View;Landroid/support/v4/app/u$a;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/transition/Transition;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v4/app/u$b;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/u$b;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/u$2;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    iput-object p3, p0, Landroid/support/v4/app/u$2;->c:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/u$2;->d:Landroid/support/v4/app/u$b;

    iput-object p5, p0, Landroid/support/v4/app/u$2;->e:Ljava/util/Map;

    iput-object p6, p0, Landroid/support/v4/app/u$2;->f:Ljava/util/Map;

    iput-object p7, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/u$2;->h:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Landroid/support/v4/app/u$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u$2;->d:Landroid/support/v4/app/u$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u$2;->d:Landroid/support/v4/app/u$b;

    invoke-interface {v0}, Landroid/support/v4/app/u$b;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u$2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u$2;->f:Ljava/util/Map;

    invoke-static {v0, v2}, Landroid/support/v4/app/u;->a(Ljava/util/Map;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/u$2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u$2;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/v4/app/u$2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/app/u$2;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/u;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/u$2;->h:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->b:Landroid/transition/Transition;

    iget-object v2, p0, Landroid/support/v4/app/u$2;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/app/u;->a(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    return v5
.end method
