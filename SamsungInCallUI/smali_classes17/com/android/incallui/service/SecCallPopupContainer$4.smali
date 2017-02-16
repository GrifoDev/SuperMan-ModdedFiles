.class Lcom/android/incallui/service/SecCallPopupContainer$4;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1839
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1840
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1841
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1843
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$100(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    # invokes: Lcom/android/incallui/service/SecCallPopupContainer;->animateForToggleRejectMsg(Z)V
    invoke-static {v3, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$400(Lcom/android/incallui/service/SecCallPopupContainer;Z)V

    .line 1844
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1845
    return-void

    .line 1843
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
