.class Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->access$000(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    return-void
.end method
