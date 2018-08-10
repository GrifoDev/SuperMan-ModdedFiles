.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    return-void
.end method
