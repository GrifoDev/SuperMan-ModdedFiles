.class public Landroid/location/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Address$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminArea:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFeatureName:Ljava/lang/String;

.field private mHasLatitude:Z

.field private mHasLongitude:Z

.field private mLatitude:D

.field private mLocale:Ljava/util/Locale;

.field private mLocality:Ljava/lang/String;

.field private mLongitude:D

.field private mMaxAddressLineIndex:I

.field private mPhone:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPremises:Ljava/lang/String;

.field private mSubAdminArea:Ljava/lang/String;

.field private mSubLocality:Ljava/lang/String;

.field private mSubThoroughfare:Ljava/lang/String;

.field private mThoroughfare:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/location/Address;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/location/Address;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method static synthetic -get2(Landroid/location/Address;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method static synthetic -get3(Landroid/location/Address;)I
    .locals 1

    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method static synthetic -set0(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set1(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Landroid/location/Address;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/Address;I)I
    .locals 0

    iput p1, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return p1
.end method

.method static synthetic -set12(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set13(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set14(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set15(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set16(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set17(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set18(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set19(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Landroid/location/Address;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Address;->mHasLatitude:Z

    return p1
.end method

.method static synthetic -set7(Landroid/location/Address;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Address;->mHasLongitude:Z

    return p1
.end method

.method static synthetic -set8(Landroid/location/Address;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/Address$1;

    invoke-direct {v0}, Landroid/location/Address$1;-><init>()V

    sput-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    iput-boolean v1, p0, Landroid/location/Address;->mHasLatitude:Z

    iput-boolean v1, p0, Landroid/location/Address;->mHasLongitude:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public clearLatitude()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return-void
.end method

.method public clearLongitude()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddressLine(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMaxAddressLineIndex()I
    .locals 1

    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPremises()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAdminArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLocality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getSubThoroughfare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getThoroughfare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLatitude()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method public setAddressLine(ILjava/lang/String;)V
    .locals 5

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    :cond_1
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    :cond_3
    return-void
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-void
.end method

.method public setPremises(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-void
.end method

.method public setSubAdminArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-void
.end method

.method public setSubLocality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-void
.end method

.method public setSubThoroughfare(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-void
.end method

.method public setThoroughfare(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5d

    const/16 v5, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Address[addressLines=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    if-gt v0, v3, :cond_2

    if-lez v0, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",admin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",sub-admin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",locality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",thoroughfare="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",postalCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",countryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",countryName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",hasLatitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",hasLongitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v3, :cond_3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v3, :cond_1

    iget-wide v6, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v3, :cond_2

    iget-wide v4, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_2
    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1
.end method
