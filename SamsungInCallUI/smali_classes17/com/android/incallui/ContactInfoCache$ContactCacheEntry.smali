.class public Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactCacheEntry"
.end annotation


# instance fields
.field public callMessage:Ljava/lang/String;

.field public callOrgInfo:Ljava/lang/String;

.field public canViewContactDetails:Z

.field public cdnipNumber:Ljava/lang/String;

.field public contactExists:Z

.field public contactLookupResult:I

.field public contactRingtoneUri:Landroid/net/Uri;

.field public contactUri:Landroid/net/Uri;

.field public displayPhotoUri:Landroid/net/Uri;

.field public email:Ljava/lang/String;

.field public gradientEndColor:I

.field public gradientStartColor:I

.field public hide_status:Z

.field public isChangedHideStatus:Z

.field public isEmergency:Z

.field public isGradientColorExists:Z

.field public isLinkedin:Z

.field public isLinkedinDirectConnection:Z

.field public isLinkedinUpdated:Z

.field public isLoadingContactInteractions:Z

.field public isLoadingPhoto:Z

.field public isPersonalPhotoAvailable:Z

.field public isSipCall:Z

.field public isVoiceMail:Z

.field public isYellowPage:Z

.field public label:Ljava/lang/String;

.field public labelType:I

.field public location:Ljava/lang/String;

.field public locationAddress:Landroid/location/Address;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public message:Ljava/lang/String;

.field public nameAlternative:Ljava/lang/String;

.field public namePrimary:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public openingHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;"
        }
    .end annotation
.end field

.field public originalNumber:Ljava/lang/String;

.field public personDataId:J

.field public personId:J

.field public photo:Landroid/graphics/drawable/Drawable;

.field public presentation:I

.field public queryCompleted:Z

.field public smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

.field public time:Ljava/lang/String;

.field public userType:J

.field public yellowPageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    iput-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    iput-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "nameAlternative"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "originalNumber"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "label"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "labelType"

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "photo"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSipCall"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "displayPhotoUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "locationAddress"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "openingHours"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->openingHours:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactLookupResult"

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "userType"

    iget-wide v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactRingtoneUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "contactExists"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "canViewContactDetails"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isPersonalPhotoAvailable"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isEmergency"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isVoiceMail"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "presentation"

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "email"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isLinkedin"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedin:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isLinkedinDirectConnection"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isLinkedinUpdated"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinUpdated:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cdnipNumber"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "callOrgInfo"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
