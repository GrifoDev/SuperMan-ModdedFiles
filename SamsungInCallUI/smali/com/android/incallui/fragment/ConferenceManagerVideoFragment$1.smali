.class Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->setupEndButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

.field final synthetic val$rowId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

    iput p2, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->animateForHide()V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    iget v1, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;->val$rowId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->endConferenceConnection(I)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_dropParticipant()V

    return-void
.end method
