.class public final Landroid/service/autofill/SaveInfo;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveInfo$1;,
        Landroid/service/autofill/SaveInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/SaveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE:I = 0x1

.field public static final NEGATIVE_BUTTON_STYLE_CANCEL:I = 0x0

.field public static final NEGATIVE_BUTTON_STYLE_REJECT:I = 0x1

.field public static final SAVE_DATA_TYPE_ADDRESS:I = 0x2

.field public static final SAVE_DATA_TYPE_CREDIT_CARD:I = 0x4

.field public static final SAVE_DATA_TYPE_EMAIL_ADDRESS:I = 0x10

.field public static final SAVE_DATA_TYPE_GENERIC:I = 0x0

.field public static final SAVE_DATA_TYPE_PASSWORD:I = 0x1

.field public static final SAVE_DATA_TYPE_USERNAME:I = 0x8


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private final mFlags:I

.field private final mNegativeActionListener:Landroid/content/IntentSender;

.field private final mNegativeButtonStyle:I

.field private final mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get6(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get3(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get2(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get5(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get4(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get0(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-get1(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public getNegativeActionListener()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getNegativeActionStyle()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public getOptionalIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getRequiredIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SaveInfo: [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/service/autofill/SaveInfo;

    const-string/jumbo v2, "SAVE_DATA_TYPE_"

    iget v3, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requiredIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/service/autofill/SaveInfo;

    const-string/jumbo v2, "NEGATIVE_BUTTON_STYLE_"

    iget v3, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
