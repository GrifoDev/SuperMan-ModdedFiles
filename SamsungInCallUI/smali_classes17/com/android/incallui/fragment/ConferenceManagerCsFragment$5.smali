.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConferenceManagerCsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v1, "hide animation end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method
