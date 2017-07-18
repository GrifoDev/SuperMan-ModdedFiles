.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConferenceManagerCsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForSplit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v2, "split animation end..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v3}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$100(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ConferenceManagerPresenter;->separateConferenceConnection(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->setViewStatePostSplit()V

    :cond_1
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonUi;->setFocusInCallButton(Z)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
