.class public Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextWakeUpVoiceAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_REFERENCE_DATA:I = 0x1

.field private static final MODE_REGISTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextWakeUpVoiceAttribute"


# instance fields
.field private mGramData:[B

.field private mMode:I

.field private mNetData:[B

.field private mVoiceMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 98
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 79
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3
    .param p1, "netData"    # [B
    .param p2, "gramData"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    iput-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 116
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 117
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 118
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 115
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v1, :cond_0

    .line 148
    const-string/jumbo v1, "voice_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    :goto_0
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 144
    return-void

    .line 150
    :cond_0
    const-string/jumbo v1, "net_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 151
    const-string/jumbo v1, "gram_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v2, :cond_2

    .line 129
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v2, v0, :cond_0

    .line 130
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    if-nez v2, :cond_3

    .line 133
    const-string/jumbo v0, "SemContextWakeUpVoiceAttribute"

    const-string/jumbo v2, "The net data is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v1

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v2, :cond_4

    .line 137
    const-string/jumbo v0, "SemContextWakeUpVoiceAttribute"

    const-string/jumbo v2, "The gram data is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v1

    .line 140
    :cond_4
    return v0
.end method
