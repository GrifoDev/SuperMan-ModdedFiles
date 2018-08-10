.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v2

    :goto_0
    if-lt v3, v2, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v5

    return-object v5

    :cond_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
