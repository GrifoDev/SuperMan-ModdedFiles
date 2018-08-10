.class Lcom/android/internal/widget/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mNewRect:Landroid/graphics/Rect;

.field private final mOldRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->-get0(Lcom/android/internal/widget/FloatingToolbar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->-get1(Lcom/android/internal/widget/FloatingToolbar;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->-set3(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v1, v0}, Lcom/android/internal/widget/FloatingToolbar;->-set0(Lcom/android/internal/widget/FloatingToolbar;I)I

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->-get2(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->-set1(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    :cond_1
    return-void
.end method
