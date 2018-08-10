.class public Landroid/content/RestrictionEntry;
.super Ljava/lang/Object;
.source "RestrictionEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/RestrictionEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_BUNDLE:I = 0x7

.field public static final TYPE_BUNDLE_ARRAY:I = 0x8

.field public static final TYPE_CHOICE:I = 0x2

.field public static final TYPE_CHOICE_LEVEL:I = 0x3

.field public static final TYPE_INTEGER:I = 0x5

.field public static final TYPE_MULTI_SELECT:I = 0x4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_STRING:I = 0x6


# instance fields
.field private mChoiceEntries:[Ljava/lang/String;

.field private mChoiceValues:[Ljava/lang/String;

.field private mCurrentValue:Ljava/lang/String;

.field private mCurrentValues:[Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mRestrictions:[Landroid/content/RestrictionEntry;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/RestrictionEntry$1;

    invoke-direct {v0}, Landroid/content/RestrictionEntry$1;-><init>()V

    sput-object v0, Landroid/content/RestrictionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    iput-object p2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v2, v2, [Landroid/content/RestrictionEntry;

    iput-object v2, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    aget-object v2, v1, v0

    check-cast v2, Landroid/content/RestrictionEntry;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V
    .locals 5

    const/4 v4, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    if-eqz p3, :cond_1

    const/16 v1, 0x8

    iput v1, p0, Landroid/content/RestrictionEntry;->mType:I

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v3

    if-eq v3, v4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bundle_array restriction can only have nested restriction entries of type bundle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Landroid/content/RestrictionEntry;->mType:I

    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    return-void
.end method

.method public static createBundleArrayEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .locals 2

    new-instance v0, Landroid/content/RestrictionEntry;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    return-object v0
.end method

.method public static createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .locals 2

    new-instance v0, Landroid/content/RestrictionEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, p0, :cond_0

    return v3

    :cond_0
    instance-of v1, p1, Landroid/content/RestrictionEntry;

    if-nez v1, :cond_1

    return v4

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/RestrictionEntry;

    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    iget v2, v0, Landroid/content/RestrictionEntry;->mType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    return v4

    :cond_3
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    iget-object v2, v0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    iget-object v2, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_6
    return v4
.end method

.method public getAllSelectedStrings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictions()[Landroid/content/RestrictionEntry;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/content/RestrictionEntry;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x11

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit16 v0, v2, 0x20f

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    if-eqz v1, :cond_2

    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v2, v3

    goto :goto_0
.end method

.method public setAllSelectedStrings([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setIntValue(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public setRestrictions([Landroid/content/RestrictionEntry;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    return-void
.end method

.method public setSelectedState(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public setSelectedString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RestrictionEntry{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChoiceEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChoiceValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRestrictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
