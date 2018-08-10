.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->-get0(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v3, v4}, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->-get0(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v3, v4}, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
