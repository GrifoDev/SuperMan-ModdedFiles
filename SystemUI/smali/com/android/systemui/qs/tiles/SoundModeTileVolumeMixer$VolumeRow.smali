.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private bar:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

.field private seekbar:Landroid/widget/SeekBar;

.field private stream:I

.field private title:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->bar:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->bar:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->seekbar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;-><init>()V

    return-void
.end method
