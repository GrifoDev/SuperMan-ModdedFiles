.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_PEOPLE:Ljava/lang/String; = "key_people"

.field public static final KEY_SNOOZE_CRITERIA:Ljava/lang/String; = "key_snooze_criteria"


# instance fields
.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;

.field private final mSignals:Landroid/os/Bundle;

.field private final mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/Adjustment$1;

    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return-void

    :cond_0
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/service/notification/Adjustment;->mUser:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSignals()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUser()I
    .locals 1

    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
