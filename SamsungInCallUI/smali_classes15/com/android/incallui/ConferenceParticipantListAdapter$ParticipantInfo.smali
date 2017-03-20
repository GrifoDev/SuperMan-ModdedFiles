.class Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"


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
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    .line 79
    # operator++ for: Lcom/android/incallui/ConferenceParticipantListAdapter;->sParticipantInfoIdCounter:I
    invoke-static {}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$008()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mId:I

    .line 80
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    .line 81
    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 82
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    instance-of v1, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 126
    .local v0, "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 128
    .end local v0    # "p":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mId:I

    return v0
.end method

.method public getPreviousCallState()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCacheLookupComplete()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return v0
.end method

.method public setCacheLookupComplete(Z)V
    .locals 0
    .param p1, "cacheLookupComplete"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    .line 120
    return-void
.end method

.method public setCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/Call;

    .line 95
    return-void
.end method

.method public setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 112
    return-void
.end method

.method public setPreviousCallState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 102
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

    .line 103
    iput p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mPreviousCallState:I

    .line 104
    return-void
.end method
