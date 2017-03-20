.class public Lcom/android/incallui/richscreen/CustomerVideoView;
.super Landroid/widget/VideoView;
.source "CustomerVideoView.java"


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "CustomerVideoView"


# instance fields
.field private videoHeight:I

.field private videoLeft:I

.field private videoRight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "CustomerVideoView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0496

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0499

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int p3, v0

    .line 49
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    iget v4, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    move-object v0, p0

    move v3, p3

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    iput p2, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    .line 55
    iput p1, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    .line 56
    iget v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    iget v1, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->setMeasuredDimension(II)V

    .line 57
    return-void
.end method
