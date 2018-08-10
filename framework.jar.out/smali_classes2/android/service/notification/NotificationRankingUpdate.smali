.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationRankingUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannels:Landroid/os/Bundle;

.field private final mImportance:[I

.field private final mImportanceExplanation:Landroid/os/Bundle;

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;

.field private final mOverrideGroupKeys:Landroid/os/Bundle;

.field private final mOverridePeople:Landroid/os/Bundle;

.field private final mSecPinState:Landroid/os/Bundle;

.field private final mShowBadge:Landroid/os/Bundle;

.field private final mSnoozeCriteria:Landroid/os/Bundle;

.field private final mSuppressedVisualEffects:Landroid/os/Bundle;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSecPinState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    iput-object p3, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    iput-object p6, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    iput-object p9, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    iput-object p10, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    iput-object p11, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    iput-object p12, p0, Landroid/service/notification/NotificationRankingUpdate;->mSecPinState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    return-object v0
.end method

.method public getImportance()[I
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    return-object v0
.end method

.method public getImportanceExplanation()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKeys()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverridePeople()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSecPinState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSecPinState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShowBadge()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSnoozeCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSuppressedVisualEffects()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSecPinState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
