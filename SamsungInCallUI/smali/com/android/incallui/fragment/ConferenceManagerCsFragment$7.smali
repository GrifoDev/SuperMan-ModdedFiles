.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForManager()V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "manage animation end..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
