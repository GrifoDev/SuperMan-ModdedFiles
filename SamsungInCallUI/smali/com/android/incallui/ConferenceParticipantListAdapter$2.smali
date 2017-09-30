.class Lcom/android/incallui/ConferenceParticipantListAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
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

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    const-string v2, "ConferenceParticipantListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeleteListener callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v2}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-static {v1, v2}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$200(Lcom/android/incallui/ConferenceParticipantListAdapter;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
