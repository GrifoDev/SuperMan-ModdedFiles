.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;
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

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "mAnimationFadeOutListener onAnimationEnd!!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$400(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v2

    aget-object v0, v0, v2

    const v2, 0x7f1002a8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$502(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$500(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->manageConferenceUpdateAfterAnim()V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$400(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setConferenceListAlpha(IF)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "mAnimationFadeOutListener onAnimationStart!!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
