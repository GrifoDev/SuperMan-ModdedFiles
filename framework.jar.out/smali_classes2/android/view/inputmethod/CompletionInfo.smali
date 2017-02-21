.class public final Landroid/view/inputmethod/CompletionInfo;
.super Ljava/lang/Object;
.source "CompletionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CompletionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/CompletionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:J

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mPosition:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/CompletionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CompletionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(JILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/CompletionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CompletionInfo{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
