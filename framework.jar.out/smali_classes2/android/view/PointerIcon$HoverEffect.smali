.class Landroid/view/PointerIcon$HoverEffect;
.super Ljava/lang/Object;
.source "PointerIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverEffect"
.end annotation


# instance fields
.field private mHoverSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private final soundURIs:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "/media/audio/ui/HoverPointer.ogg"

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->soundURIs:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/PointerIcon$HoverEffect;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/PointerIcon$HoverEffect;-><init>()V

    return-void
.end method


# virtual methods
.method playSound(I)V
    .locals 9

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    :cond_0
    iget v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/media/audio/ui/HoverPointer.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    :cond_1
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    return-void
.end method
