.class final Landroid/support/v4/app/FragmentTransitionCompat21$4;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    invoke-static {v5, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->-wrap0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
