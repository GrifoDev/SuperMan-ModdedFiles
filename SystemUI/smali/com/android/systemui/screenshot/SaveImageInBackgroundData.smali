.class Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field capturedOrigin:I

.field capturedType:I

.field context:Landroid/content/Context;

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field navigationBarHeight:I

.field navigationBarVisible:Z

.field previewWidth:I

.field previewheight:I

.field result:I

.field rotation:I

.field statusBarHeight:I

.field statusBarVisible:Z

.field topApplication:Ljava/lang/String;

.field webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    return-void
.end method

.method clearImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    return-void
.end method
