.class public Landroid/support/v4/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompat$AttributeContentType;,
        Landroid/support/v4/media/AudioAttributesCompat$AttributeUsage;,
        Landroid/support/v4/media/AudioAttributesCompat$AudioManagerHidden;,
        Landroid/support/v4/media/AudioAttributesCompat$Builder;
    }
.end annotation


# static fields
.field private static final SDK_USAGES:[I

.field private static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static sForceLegacyBehavior:Z


# instance fields
.field private mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

.field mContentType:I

.field mFlags:I

.field mLegacyStream:Ljava/lang/Integer;

.field mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SDK_USAGES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    return-void
.end method

.method static toVolumeStreamType(ZII)I
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v3, p1, 0x1

    if-ne v3, v0, :cond_1

    if-eqz p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    and-int/lit8 v3, p1, 0x4

    if-ne v3, v4, :cond_3

    if-eqz p0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    if-eqz p0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v2

    :pswitch_2
    return v0

    :pswitch_3
    return v1

    :pswitch_4
    if-eqz p0, :cond_4

    :goto_2
    return v1

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_5
    return v4

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :pswitch_8
    const/16 v0, 0xa

    return v0

    :pswitch_9
    if-eqz p0, :cond_5

    const/high16 v0, -0x80000000

    :goto_3
    return v0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static usageToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_c
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_d
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_e
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "USAGE_ASSISTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/AudioAttributesCompat;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    sget-boolean v3, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v3, :cond_3

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v1}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_3
    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iget-object v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object v3, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public getContentType()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    sget-boolean v2, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v2}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    return v2

    :cond_0
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_1
    :goto_0
    and-int/lit16 v2, v0, 0x111

    return v2

    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLegacyStreamType()I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21;->toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getUsage()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " audioattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method usageToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
