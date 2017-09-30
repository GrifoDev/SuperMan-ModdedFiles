.class public Lcom/android/incallui/service/vt/VideoDimension;
.super Ljava/lang/Object;


# static fields
.field public static final HD_HEIGHT:I = 0x500

.field public static final HD_WIDTH:I = 0x2d0

.field public static final VGA_HEIGHT:I = 0x280

.field public static final VGA_WIDTH:I = 0x1e0


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iget v0, p1, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getAspectRatioLandscape()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getAspectRatioPortrait()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v0

    goto :goto_0
.end method

.method public isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iget v1, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iget v1, p1, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    iget v1, p1, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swap()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iget v1, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    iput v1, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " {%d X %d} "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iput p2, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    return-void
.end method

.method public update(Lcom/android/incallui/service/vt/VideoDimension;)V
    .locals 1

    iget v0, p1, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    iget v0, p1, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    return-void
.end method
