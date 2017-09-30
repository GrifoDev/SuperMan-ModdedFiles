.class public Lcom/android/incallui/agif/AgifImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setGifDrawableBackground()V
    .locals 1

    const v0, 0x7f020051

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifImageView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifImageView;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/incallui/agif/AgifImageView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifImageView$1;-><init>(Lcom/android/incallui/agif/AgifImageView;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/agif/AgifImageView;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageView;->setGifDrawableBackground()V

    return-void
.end method
