.class Lcom/android/incallui/ConferenceParticipantListAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 3

    const-string v0, "ConferenceParticipantListAdapter"

    const-string v1, "OnAddDeleteListener: onAdd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onAnimationEnd(Z)V
    .locals 3

    const-string v0, "ConferenceParticipantListAdapter"

    const-string v1, "OnAddDeleteListener: onAnimationEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$502(Lcom/android/incallui/ConferenceParticipantListAdapter;Z)Z

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceManagerPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 3

    const-string v0, "ConferenceParticipantListAdapter"

    const-string v1, "OnAddDeleteListener: onAnimationStart"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDelete()V
    .locals 3

    const-string v0, "ConferenceParticipantListAdapter"

    const-string v1, "OnAddDeleteListener: onDelete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$300(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v2, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$400(Lcom/android/incallui/ConferenceParticipantListAdapter;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->removeCallFromVzwConfCallListByCallId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$4;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$300(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
