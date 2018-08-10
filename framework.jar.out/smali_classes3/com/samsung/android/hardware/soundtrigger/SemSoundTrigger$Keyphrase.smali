.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyphrase"
.end annotation


# instance fields
.field private final id:I

.field instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

.field private final locale:Ljava/lang/String;

.field private final recognitionModes:I

.field private final text:Ljava/lang/String;

.field private final users:[I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    return-object v0
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    iput v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    iput v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
