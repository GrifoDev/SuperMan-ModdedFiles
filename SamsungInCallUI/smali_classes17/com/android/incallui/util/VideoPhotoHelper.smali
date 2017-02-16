.class public Lcom/android/incallui/util/VideoPhotoHelper;
.super Ljava/lang/Object;
.source "VideoPhotoHelper.java"


# instance fields
.field private final IMAGE_HOLD_DISPLAY:I

.field private final IMAGE_HOLD_PREVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final TOTAL_BITMAP_COUNT:I

.field mDisplayContainer:Landroid/view/ViewGroup;

.field mFarEndPhoto:Landroid/widget/ImageView;

.field mIsUsingDefaultPhotoforFarEnd:Z

.field mIsUsingDefaultPhotoforNearEnd:Z

.field mNearEndPhoto:Landroid/widget/ImageView;

.field mPreviewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "previewContainer"    # Landroid/view/ViewGroup;
    .param p2, "displayContainer"    # Landroid/view/ViewGroup;
    .param p3, "nearEndPhoto"    # Landroid/widget/ImageView;
    .param p4, "farEndphoto"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "VideoPhotoHelper"

    iput-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->TOTAL_BITMAP_COUNT:I

    .line 32
    iput v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->IMAGE_HOLD_PREVIEW:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->IMAGE_HOLD_DISPLAY:I

    .line 35
    iput-boolean v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    .line 45
    const-string v0, "VideoPhotoHelper"

    const-string v1, "create VideoPhotoHelper"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 47
    iput-object p2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    .line 48
    iput-object p3, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/util/VideoPhotoHelper;->init()V

    .line 51
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "VideoPhotoHelper"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "what"    # I

    .prologue
    .line 58
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x1

    .line 60
    .local v1, "id":I
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 70
    const-string v2, "VideoPhotoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    :goto_1
    return-object v2

    .line 62
    :pswitch_0
    const v1, 0x7f0203d2

    .line 63
    goto :goto_0

    .line 65
    :pswitch_1
    const v1, 0x7f020305

    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "VideoPhotoHelper"

    const-string v1, "create init"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setFarEndPhoto()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto(ZZ)V

    .line 99
    return-void
.end method

.method public setFarEndPhoto(ZZ)V
    .locals 2
    .param p1, "forceUpdate"    # Z
    .param p2, "isBig"    # Z

    .prologue
    .line 102
    const-string v0, "VideoPhotoHelper"

    const-string v1, "setFarEndPhoto"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFarEndPhoto mPreviewContainer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoContainer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    :cond_2
    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const-string v0, "VideoPhotoHelper"

    const-string v1, "setImageBitmap view = null"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    if-nez p2, :cond_1

    .line 120
    const-string v0, "VideoPhotoHelper"

    const-string v1, "setImageBitmap bmp = null"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setNearEndPhoto()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto(ZZ)V

    .line 82
    return-void
.end method

.method public setNearEndPhoto(ZZ)V
    .locals 2
    .param p1, "forceUpdate"    # Z
    .param p2, "isBig"    # Z

    .prologue
    .line 84
    const-string v0, "VideoPhotoHelper"

    const-string v1, "setNearEndPhoto"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNearEndPhoto mPreviewContainer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoContainer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 87
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    :cond_2
    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setUsingDefaultPhotoforFarEnd()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    .line 132
    return-void
.end method

.method public setUsingDefaultPhotoforNearEnd()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    .line 128
    return-void
.end method
