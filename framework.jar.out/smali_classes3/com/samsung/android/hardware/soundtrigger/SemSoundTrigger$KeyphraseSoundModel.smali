.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseSoundModel"
.end annotation


# instance fields
.field instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field public final keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p4

    new-array v7, v0, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    :goto_0
    array-length v0, p4

    if-ge v6, v0, :cond_0

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v1, p4, v6

    invoke-static {v1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-get0(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I

    move-result v1

    aget-object v2, p4, v6

    invoke-static {v2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-get2(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I

    move-result v2

    aget-object v3, p4, v6

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-get1(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p4, v6

    invoke-static {v4}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-get3(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p4, v6

    invoke-static {v5}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-get4(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v0, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-direct {v0, p1, p2, p3, v7}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;

    iput-object p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    return-void
.end method
