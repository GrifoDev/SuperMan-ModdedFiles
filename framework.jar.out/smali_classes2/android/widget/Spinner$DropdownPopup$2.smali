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
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1429
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1432
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, "mRootView":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v1}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 1434
    nop

    nop

    .end local v0    # "mRootView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupportBridge()Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->hasDecorCaptionView()Z

    move-result v1

    .line 1433
    if-eqz v1, :cond_0

    .line 1435
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1438
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-static {v1}, Landroid/widget/Spinner$DropdownPopup;->-wrap0(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1431
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v1}, Landroid/widget/Spinner;->-wrap0(Landroid/widget/Spinner;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1442
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1444
    :cond_1
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1447
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-static {v1}, Landroid/widget/Spinner$DropdownPopup;->-wrap0(Landroid/widget/Spinner$DropdownPopup;)V

    goto :goto_0
.end method
