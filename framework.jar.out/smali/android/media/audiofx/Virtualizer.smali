.class public Landroid/media/audiofx/Virtualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Virtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Virtualizer$BaseParameterListener;,
        Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Virtualizer$Settings;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PARAM_FORCE_VIRTUALIZATION_MODE:I = 0x3

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field public static final PARAM_VIRTUALIZATION_MODE:I = 0x4

.field public static final PARAM_VIRTUAL_SPEAKER_ANGLES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Virtualizer"

.field public static final VIRTUALIZATION_MODE_AUTO:I = 0x1

.field public static final VIRTUALIZATION_MODE_BINAURAL:I = 0x2

.field public static final VIRTUALIZATION_MODE_OFF:I = 0x0

.field public static final VIRTUALIZATION_MODE_TRANSAURAL:I = 0x3


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-boolean v2, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string/jumbo v3, "Virtualizer"

    const-string/jumbo v4, "WARNING: attaching a Virtualizer to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v0, v1, [I

    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    aget v3, v0, v2

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static deviceToMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAnglesInt(II[I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Virtualizer: illegal CHANNEL_INVALID channel mask"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-ne p1, v9, :cond_1

    const/16 v0, 0xc

    :goto_0
    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    if-eqz p3, :cond_2

    array-length v7, p3

    mul-int/lit8 v8, v2, 0x3

    if-ge v7, v8, :cond_2

    const-string/jumbo v7, "Virtualizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Size of array for angles cannot accomodate number of channels in mask ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Virtualizer: array for channel / angle pairs is too small: is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", should be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v9, v2, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/media/AudioFormat;->convertChannelOutMaskToNativeMask(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    mul-int/lit8 v7, v2, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Landroid/media/audiofx/Virtualizer;->getParameter([B[B)I

    move-result v6

    if-ltz v6, :cond_4

    if-eqz p3, :cond_3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    mul-int/lit8 v7, v1, 0x3

    mul-int/lit8 v8, v1, 0x4

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v8

    aput v8, p3, v7

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v8, v1, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    aput v8, p3, v7

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v1, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    aput v8, p3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v9

    :cond_4
    const/4 v7, -0x4

    if-ne v6, v7, :cond_5

    return v10

    :cond_5
    invoke-virtual {p0, v6}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    const-string/jumbo v7, "Virtualizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected status code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private static getDeviceForModeForce(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    return v0
.end method

.method private static getDeviceForModeQuery(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Virtualizer: illegal virtualization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canVirtualize(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0
.end method

.method public forceVirtualizationMode(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeForce(I)I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(II)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    const-string/jumbo v3, "Virtualizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Landroid/media/audiofx/Virtualizer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    new-array v1, v2, [S

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v1, 0x1

    new-array v0, v1, [S

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getSpeakerAngles(II[I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Virtualizer: illegal null channel / angle array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0
.end method

.method public getStrengthSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    return v0
.end method

.method public getVirtualizationMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v0

    if-ltz v0, :cond_0

    aget v2, v1, v5

    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->deviceToMode(I)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x4

    if-ne v0, v2, :cond_1

    return v5

    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    const-string/jumbo v2, "Virtualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " after getParameter(PARAM_VIRTUALIZATION_MODE)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public setParameterListener(Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;)V
    .locals 3

    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    new-instance v0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer$BaseParameterListener;)V

    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-short v0, p1, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    return-void
.end method
