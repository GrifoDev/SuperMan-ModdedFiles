.class Lcom/android/internal/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->isModal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    goto :goto_0
.end method
