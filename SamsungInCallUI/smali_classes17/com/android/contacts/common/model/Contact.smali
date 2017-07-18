.class public Lcom/android/contacts/common/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/Contact$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/common/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPhotoBinaryData:[B

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-object p6, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-wide p9, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput p11, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput-wide p12, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput v2, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3

    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public createRawContactDeltaList()Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot extract content values from an aggregated contact"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data15"

    iget-object v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v2
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v2, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getThumbnailPhotoBinaryData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayNameFromOrganization()Z
    .locals 2

    const/16 v0, 0x1e

    iget v1, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method setThumbnailPhotoBinaryData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
