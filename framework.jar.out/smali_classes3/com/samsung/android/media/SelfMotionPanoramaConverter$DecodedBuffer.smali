.class Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SelfMotionPanoramaConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodedBuffer"
.end annotation


# instance fields
.field private buffer:[B

.field private frameNo:I

.field private matrix:[F

.field final synthetic this$0:Lcom/samsung/android/media/SelfMotionPanoramaConverter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->buffer:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->frameNo:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->matrix:[F

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;[BI[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/SelfMotionPanoramaConverter;
    .param p2, "buffer"    # [B
    .param p3, "frameNo"    # I
    .param p4, "matrix"    # [F

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->this$0:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->buffer:[B

    .line 62
    iput p3, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->frameNo:I

    .line 63
    iput-object p4, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->matrix:[F

    .line 60
    return-void
.end method
