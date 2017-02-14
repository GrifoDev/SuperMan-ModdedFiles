.class Lcom/android/internal/widget/FloatingToolbar$2;
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

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-get1(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->-set0(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    goto :goto_0
.end method
