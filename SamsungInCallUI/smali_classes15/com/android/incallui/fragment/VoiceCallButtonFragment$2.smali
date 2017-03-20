.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;
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
    .line 271
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 276
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .line 278
    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottomHeight:I
    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$200(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v1, "VoiceCallButtonFragment"

    const-string v2, "onGlobalLayout"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->arrangeIncomingCallScreen()V
    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto :goto_0
.end method
