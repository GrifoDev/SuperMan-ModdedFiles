.class Lcom/android/internal/view/FloatingActionMode$1;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-wrap0(Lcom/android/internal/view/FloatingActionMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get2(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get6(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get2(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get5(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get2(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get7(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get7(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get5(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v2}, Lcom/android/internal/view/FloatingActionMode;->-get5(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get6(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get3(Lcom/android/internal/view/FloatingActionMode;)[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get7(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v1}, Lcom/android/internal/view/FloatingActionMode;->-get4(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    :cond_2
    return-void
.end method
