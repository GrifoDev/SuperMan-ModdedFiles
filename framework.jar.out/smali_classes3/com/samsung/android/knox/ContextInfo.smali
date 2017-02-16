.class public Lcom/samsung/android/knox/ContextInfo;
.super Ljava/lang/Object;
.source "ContextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ContextInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/ContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PERSONA_ID:I = 0x64


# instance fields
.field public final mCallerUid:I

.field public final mContainerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/knox/ContextInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 117
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 118
    .local v0, "userId":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 115
    :goto_0
    return-void

    .line 121
    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "callerUid"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 135
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 136
    .local v0, "userId":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 132
    :goto_0
    return-void

    .line 139
    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "callerUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 152
    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 150
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,Container id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 208
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void
.end method
