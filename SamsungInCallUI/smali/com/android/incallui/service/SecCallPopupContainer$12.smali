.class Lcom/android/incallui/service/SecCallPopupContainer$12;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$600(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2700(Lcom/android/incallui/service/SecCallPopupContainer;)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$600(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$12;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2900(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
