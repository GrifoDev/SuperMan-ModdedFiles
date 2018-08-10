.class Landroid/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v2, v2, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v2, v2, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v2}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-static {v2}, Landroid/widget/Spinner$DropdownPopup;->-wrap0(Landroid/widget/Spinner$DropdownPopup;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v2, v2, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-wrap0(Landroid/widget/Spinner;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v2}, Landroid/widget/Spinner$DropdownPopup;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v2}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-static {v2}, Landroid/widget/Spinner$DropdownPopup;->-wrap0(Landroid/widget/Spinner$DropdownPopup;)V

    goto :goto_1
.end method
