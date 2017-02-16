.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 311
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 312
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    const-string v3, "VoiceCallButtonFragment"

    const-string v4, "onGlobalLayout() isNotAlive"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 321
    .local v0, "inCallActivity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isShowDialpadRequested()Z

    move-result v1

    .line 322
    .local v1, "isShowDialpadRequested":Z
    const-string v3, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView() displayDialpad : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isAnimateDialpadOnShow()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 325
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->setShowDialpadRequested(Z)V

    .line 326
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->setAnimateDialpadOnShow(Z)V

    goto :goto_0
.end method
