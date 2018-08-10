.class final Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;
.super Ljava/lang/Object;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SignalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlashArtist"
.end annotation


# instance fields
.field private final mPath:Landroid/graphics/Path;

.field private final mSlashRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V

    return-void
.end method

.method private scale(FI)F
    .locals 1

    int-to-float v0, p2

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/high16 v5, -0x3dcc0000    # -45.0f

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const v1, 0x3ecf96ed

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v1

    const v2, 0x3e4fc113

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v2

    const v3, 0x3ef6cf78

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v3

    const v4, 0x3f8f4d78

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->scale(FI)F

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->updateRect(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method updateRect(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->mSlashRect:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
