.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$1;,
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field private static final ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x3ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field public static final FLAG_BYPASS_MUTE:I = 0x80

.field public static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20

.field public static final FLAG_LOW_LATENCY:I = 0x100

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field public static final SDK_USAGES:[I

.field public static final SEM_TAG_BIXBY:Ljava/lang/String; = "BIXBY"

.field public static final SEM_TAG_VR360:Ljava/lang/String; = "AUDIO_STREAM_VR"

.field public static final SUPPRESSIBLE_CALL:I = 0x2

.field public static final SUPPRESSIBLE_NEVER:I = 0x3

.field public static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioAttributes;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/AudioAttributes;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioAttributes;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/AudioAttributes;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/AudioAttributes;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic -set3(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/media/AudioAttributes;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic -set5(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic -set6(Landroid/media/AudioAttributes;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic -wrap0(I)I
    .locals 1

    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

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
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes;->mSource:I

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/media/AudioAttributes;->mUsage:I

    iput v4, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iput v4, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v4, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, "AudioAttributes"

    const-string/jumbo v4, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    :goto_3
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v3, ";"

    iget-object v4, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    goto :goto_1

    :sswitch_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    goto :goto_2

    :sswitch_1
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7b9 -> :sswitch_0
        0x7bc -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    if-eqz p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v4, :cond_3

    if-eqz p0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz p0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method private static usageForStreamType(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xd

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    return v1

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x5

    return v0

    :pswitch_7
    return v0

    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_9
    const/16 v0, 0xb

    return v0

    :pswitch_a
    return v1

    :pswitch_b
    return v0

    :pswitch_c
    return v0

    :pswitch_d
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
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
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/media/AudioAttributes;

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v3, v0, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v3, v0, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v3, v0, Landroid/media/AudioAttributes;->mSource:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v3, v0, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getAllFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCapturePreset()I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioAttributes: usage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bundle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    const/16 v1, -0x7b9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void

    :cond_1
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x7bc

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method
