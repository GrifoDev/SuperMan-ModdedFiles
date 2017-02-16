.class public final Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
.super Ljava/lang/Object;
.source "SemSdCardEncryptionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCurrentUUID:Ljava/lang/String;

.field private mEnc:I

.field public mEncryptState:I

.field private mExcludeMedia:I

.field private mFullEnc:I

.field public mIsPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;-><init>()V

    .line 190
    sput-object v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "isPolicy"    # I
    .param p2, "status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 60
    iput p2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 61
    iput-object p3, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0, p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 5
    .param p0, "isPolicy"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "uuid":Ljava/lang/String;
    const/4 v1, 0x3

    .line 119
    .local v1, "encrypt_state":I
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v2, v3, v4

    .line 122
    .local v2, "uuid":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    .end local v2    # "uuid":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v4, p0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v4

    .line 123
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static writeToParcel(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "c"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 177
    if-eqz p0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v3, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I
    .locals 1
    .param p1, "that"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 134
    if-eqz p1, :cond_1

    .line 135
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-object v2, v0

    .line 136
    .local v2, "other":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget v4, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v5, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v4, v5, :cond_0

    .line 137
    iget v4, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget v5, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 136
    :cond_0
    return v3

    .line 139
    .end local v2    # "other":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :catch_0
    move-exception v1

    .line 141
    :cond_1
    return v3
.end method

.method public getCurrentUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptState()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    return v0
.end method

.method public getEncryptionState()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEnc:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public isAdminPolicyEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsPolicy(I)V
    .locals 0
    .param p1, "policy"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void
.end method
