.class Lcom/android/incallui/ConferenceParticipantListAdapter$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$5;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    check-cast p2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$5;->compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I

    move-result v0

    return v0
.end method
