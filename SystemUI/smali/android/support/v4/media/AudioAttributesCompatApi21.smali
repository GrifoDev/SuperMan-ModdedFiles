.class Landroid/support/v4/media/AudioAttributesCompatApi21;
.super Ljava/lang/Object;
.source "AudioAttributesCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    }
.end annotation


# static fields
.field private static sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I
    .locals 8

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    :try_start_0
    sget-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const-class v3, Landroid/media/AudioAttributes;

    const-string/jumbo v4, "toLegacyStreamType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/media/AudioAttributes;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AudioAttributesCompat"

    const-string/jumbo v4, "getLegacyStreamType() failed on API21+"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, -0x1

    return v3
.end method
