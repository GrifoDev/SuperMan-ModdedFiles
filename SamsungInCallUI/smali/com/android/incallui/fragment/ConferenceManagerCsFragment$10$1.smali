.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10$1;->this$1:Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "mAnimationFadeOut after 1000ms"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10$1;->this$1:Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10$1;->this$1:Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;

    iget-object v1, v1, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$400(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10$1;->this$1:Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;

    iget-object v1, v1, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$600(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
