.class public Lcom/android/incallui/util/PickImageFromGallery;
.super Landroid/app/Activity;
.source "PickImageFromGallery.java"


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

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/util/PickImageFromGallery;->REQUEST_PICK_IMAGE_FROM_GALLERY:I

    .line 41
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/util/PickImageFromGallery;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "PickImageFromGallery"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    packed-switch p1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 128
    sget-object v1, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->deleteFile(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->finish()V

    .line 131
    return-void

    .line 107
    :pswitch_0
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult REQUEST_PICK_IMAGE_FROM_GALLERY - data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
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

    .line 113
    const-string v1, "during_vt_photo.jpg"

    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->sendPickedImage()V

    .line 115
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->updateIncomingHideButton()V

    goto :goto_0

    .line 121
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :pswitch_1
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult REQUEST_PICK_IMAGE_FROM_GALLERY - data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->sendPickedVideo(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v7, 0x0

    sput-object v7, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "mPickIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "imageSelected"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, "isImageSelected":Z
    const/16 v3, 0x64

    .line 50
    .local v3, "requestCode":I
    const-string v7, "PickImageFromGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnCreate() - select image ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz v1, :cond_5

    .line 52
    const-string v7, "com.sec.android.gallery3d"

    const-string v8, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    const-string v7, "image/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v7, "crop"

    const-string v8, "true"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v7, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const-string v7, "senderIsVideoCall"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const/16 v5, 0xb0

    .line 59
    .local v5, "resizeW":I
    const/16 v4, 0x90

    .line 60
    .local v4, "resizeH":I
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "resolution"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "resolution"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "resolution":Ljava/lang/String;
    const-string v7, "VGA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    const/16 v5, 0x1e0

    .line 64
    const/16 v4, 0x280

    .line 76
    .end local v6    # "resolution":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "file_path"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    .line 77
    sget-object v7, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/util/PickImageFromGallery;->finish()V

    .line 100
    .end local v4    # "resizeH":I
    .end local v5    # "resizeW":I
    :goto_1
    return-void

    .line 65
    .restart local v4    # "resizeH":I
    .restart local v5    # "resizeW":I
    .restart local v6    # "resolution":Ljava/lang/String;
    :cond_1
    const-string v7, "VGALAND"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    const/16 v5, 0x280

    .line 67
    const/16 v4, 0x1e0

    goto :goto_0

    .line 68
    :cond_2
    const-string v7, "QVGA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    const/16 v5, 0xf0

    .line 70
    const/16 v4, 0x140

    goto :goto_0

    .line 71
    :cond_3
    const-string v7, "QVGALAND"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    const/16 v5, 0x140

    .line 73
    const/16 v4, 0xf0

    goto :goto_0

    .line 81
    .end local v6    # "resolution":Ljava/lang/String;
    :cond_4
    const-string v7, "resizeW"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v7, "resizeH"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v7, "output"

    sget-object v8, Lcom/android/incallui/util/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/incallui/util/VideoCallUtils;->makeFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    const-string v7, "outputFormat"

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .end local v4    # "resizeH":I
    .end local v5    # "resizeW":I
    :goto_2
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/util/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v7, 0x7f090092

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 98
    const-string v7, "PickImageFromGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const/16 v3, 0x65

    .line 87
    const-string v7, "com.sec.android.gallery3d"

    const-string v8, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v7, "video/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v7, "only3gp"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v7, "senderIsVideoCall"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v7, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method
