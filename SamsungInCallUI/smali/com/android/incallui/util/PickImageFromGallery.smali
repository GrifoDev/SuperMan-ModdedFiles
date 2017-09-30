.class public Lcom/android/incallui/util/PickImageFromGallery;
.super Landroid/app/Activity;


# static fields
.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final LOG_TAG:Ljava/lang/String; = "PickImageFromGallery"

.field public static final RESOLUTOIN:Ljava/lang/String; = "resolution"

.field private static mFilePath:Ljava/lang/String;


# instance fields
.field private final REQUEST_PICK_IMAGE_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/util/PickImageFromGallery;->REQUEST_PICK_IMAGE_FROM_GALLERY:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/util/PickImageFromGallery;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PickImageFromGallery"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->deleteFile(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->finish()V

    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult REQUEST_PICK_IMAGE_FROM_GALLERY - data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/PickImageFromGallery;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/PickImageFromGallery;->log(Ljava/lang/String;)V

    const-string v1, "during_vt_photo.jpg"

    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->sendPickedImage()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateIncomingHideButton()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult REQUEST_PICK_IMAGE_FROM_GALLERY - data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/PickImageFromGallery;->log(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->sendPickedVideo(Landroid/net/Uri;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    const/16 v2, 0x140

    const/16 v3, 0xf0

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    sput-object v4, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "imageSelected"

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v6, 0x64

    const-string v5, "PickImageFromGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnCreate() - select image ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "image/*"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v7, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "senderIsVideoCall"

    invoke-virtual {v7, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0xb0

    const/16 v4, 0x90

    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "resolution"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "resolution"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VGA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    sget-object v2, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string v9, "VGALAND"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_0

    :cond_1
    const-string v0, "QVGA"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    const-string v0, "QVGALAND"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v2, "resizeW"

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "resizeH"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "output"

    sget-object v1, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->makeFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "outputFormat"

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v6

    :goto_2
    :try_start_0
    invoke-virtual {p0, v7, v0}, Lcom/android/incallui/util/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const v0, 0x7f0900d0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    const-string v0, "PickImageFromGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/16 v0, 0x65

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "only3gp"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "senderIsVideoCall"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    move v0, v4

    move v1, v5

    goto/16 :goto_0
.end method
