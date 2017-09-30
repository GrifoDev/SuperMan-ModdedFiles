.class Lcom/android/incallui/fragment/VoiceCallCardFragment$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMenuContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMoreMenuContainer:Landroid/view/View;

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMoreMenuContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardVolteView;->getHdWifiIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v6, v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a015c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0087

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget v9, v9, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    add-int/2addr v3, v7

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    mul-int/lit8 v2, v8, 0x2

    add-int/2addr v0, v2

    sub-int v0, v9, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_3
    const-string v1, "spr_display_hd_icon"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->getAttemptingTextSPR()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->getAttemptingTextSPR()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0
.end method
