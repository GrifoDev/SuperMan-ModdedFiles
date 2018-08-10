.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;
.super Ljava/lang/Object;
.source "SeslDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsetsListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    invoke-interface {v0, p2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;->setChildInsets(Landroid/view/WindowInsets;Z)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
