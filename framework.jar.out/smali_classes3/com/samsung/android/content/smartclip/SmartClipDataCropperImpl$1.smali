.class Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

.field final synthetic this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

.field final synthetic val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field final synthetic val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v9, "SmartClipDataCropperImpl"

    const-string/jumbo v10, "Meta data arrived from chrome"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v9, "SmartClipDataCropperImpl"

    const-string/jumbo v10, "The bundle is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void

    :cond_0
    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "html"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "text"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "rect"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-get0()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SmartClipDataCropperImpl"

    const-string/jumbo v10, "Title:%s\nURL:%s\nArea:%s\nText:%s\nHTML:%s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v12

    aput-object v8, v11, v13

    const/4 v12, 0x2

    aput-object v0, v11, v12

    const/4 v12, 0x3

    aput-object v6, v11, v12

    const/4 v12, 0x4

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v11, "title"

    invoke-direct {v10, v11, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v11, "url"

    invoke-direct {v10, v11, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v11, "html"

    invoke-direct {v10, v11, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v10, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v11, "plain_text"

    invoke-direct {v10, v11, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_5
    if-eqz v0, :cond_6

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v9, v9, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-static {v13, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    invoke-static {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-wrap0(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v9, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    :cond_6
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    iget-object v11, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    check-cast v9, Landroid/os/Handler;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v9, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v9, "SmartClipDataCropperImpl"

    const-string/jumbo v10, "Could not invoke set smartclip handler API"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
