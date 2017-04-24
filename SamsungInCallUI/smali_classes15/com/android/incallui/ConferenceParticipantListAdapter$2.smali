.class Lcom/android/incallui/ConferenceParticipantListAdapter$2;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

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
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;

    iget-object v0, v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->callId:Ljava/lang/String;

    const-string v5, "ConferenceParticipantListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDeleteListener callId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    # getter for: Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    # invokes: Lcom/android/incallui/ConferenceParticipantListAdapter;->deleteParticipantInfo(Ljava/util/ArrayList;)V
    invoke-static {v5, v4}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$200(Lcom/android/incallui/ConferenceParticipantListAdapter;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v5, v2, Lcom/android/incallui/ConferenceParticipantListAdapter$ViewHolder;->conferenceCallerInfo:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
