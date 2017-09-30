.class Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticipantInfo"
.end annotation


# instance fields
.field private mCacheLookupComplete:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mId:I

.field private mPreviousCallState:I

.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    invoke-static {}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$008()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mId:I

    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mId:I

    return v0
.end method

.method public getPreviousCallState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCacheLookupComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return v0
.end method

.method public setCacheLookupComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return-void
.end method

.method public setCall(Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    return-void
.end method

.method public setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method

.method public setPreviousCallState(I)V
    .locals 3

    const-string v0, "ConferenceParticipantListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviousCallState state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    return-void
.end method
