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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "voice_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v1, "net_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v1, "gram_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    if-nez v2, :cond_3

    const-string/jumbo v0, "SemContextWakeUpVoiceAttribute"

    const-string/jumbo v2, "The net data is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v2, :cond_4

    const-string/jumbo v0, "SemContextWakeUpVoiceAttribute"

    const-string/jumbo v2, "The gram data is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v0
.end method
