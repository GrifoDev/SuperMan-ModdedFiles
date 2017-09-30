.class public Lcom/android/incallui/util/VideoPhotoHelper;
.super Ljava/lang/Object;


# instance fields
.field private final IMAGE_HOLD_DISPLAY:I

.field private final IMAGE_HOLD_PREVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final TOTAL_BITMAP_COUNT:I

.field private mCurrentFarEndPhotoImage:I

.field private mCurrentNearEndPhotoImage:I

.field mDisplayContainer:Landroid/view/ViewGroup;

.field mFarEndPhoto:Landroid/widget/ImageView;

.field mIsUsingDefaultPhotoforFarEnd:Z

.field mIsUsingDefaultPhotoforNearEnd:Z

.field mNearEndPhoto:Landroid/widget/ImageView;

.field mPreviewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoPhotoHelper"

    iput-object v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->TOTAL_BITMAP_COUNT:I

    iput v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->IMAGE_HOLD_PREVIEW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->IMAGE_HOLD_DISPLAY:I

    iput v2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentNearEndPhotoImage:I

    iput v2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentFarEndPhotoImage:I

    iput-boolean v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    iput-boolean v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    const-string v0, "VideoPhotoHelper"

    const-string v1, "create VideoPhotoHelper"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/util/VideoPhotoHelper;->init()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "VideoPhotoHelper"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_0

    const-string v1, "VideoPhotoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    const v0, 0x7f020497

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0203bb

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 2

    const-string v0, "VideoPhotoHelper"

    const-string v1, "create init"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFarEndPhoto()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto(ZZ)V

    return-void
.end method

.method public setFarEndPhoto(ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "VideoPhotoHelper"

    const-string v1, "setFarEndPhoto"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_4

    :cond_1
    iget v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentFarEndPhotoImage:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput v3, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentFarEndPhotoImage:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentFarEndPhotoImage:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput v4, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentFarEndPhotoImage:I

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "VideoPhotoHelper"

    const-string v1, "setImageBitmap view = null"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "VideoPhotoHelper"

    const-string v1, "setImageBitmap bmp = null"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setNearEndPhoto()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto(ZZ)V

    return-void
.end method

.method public setNearEndPhoto(ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "VideoPhotoHelper"

    const-string v1, "setNearEndPhoto"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mDisplayContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_4

    :cond_1
    iget v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentNearEndPhotoImage:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput v3, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentNearEndPhotoImage:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentNearEndPhotoImage:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/incallui/util/VideoPhotoHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/util/VideoPhotoHelper;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iput v4, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mCurrentNearEndPhotoImage:I

    goto :goto_0
.end method

.method public setUsingDefaultPhotoforFarEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforFarEnd:Z

    return-void
.end method

.method public setUsingDefaultPhotoforNearEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/util/VideoPhotoHelper;->mIsUsingDefaultPhotoforNearEnd:Z

    return-void
.end method
