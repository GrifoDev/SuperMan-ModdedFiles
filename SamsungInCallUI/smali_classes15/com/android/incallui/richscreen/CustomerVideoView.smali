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

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CustomerVideoView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0499

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a052b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int p3, v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    iget v4, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    move-object v0, p0

    move v3, p3

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iput p2, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    iput p1, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    iget v0, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoWidth:I

    iget v1, p0, Lcom/android/incallui/richscreen/CustomerVideoView;->videoHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->setMeasuredDimension(II)V

    return-void
.end method
