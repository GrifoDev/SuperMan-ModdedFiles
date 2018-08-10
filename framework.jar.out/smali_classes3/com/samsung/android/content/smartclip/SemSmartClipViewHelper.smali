.class public Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;
.super Ljava/lang/Object;
.source "SemSmartClipViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSmartClipViewHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetaTag(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemSmartClipViewHelper"

    const-string/jumbo v2, "addMetaTag : Have null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_3
    const-string/jumbo v1, "SemSmartClipViewHelper"

    const-string/jumbo v2, "addMetaTag : Invalid metatag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static clearAllMetaTags(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    move-result v0

    return v0
.end method

.method public static extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The view is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v0

    return v0
.end method

.method public static getMetaTags(Landroid/view/View;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public static removeMetaTag(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipDataExtractionListener(Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static setMetaTags(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    const/4 v0, 0x1

    return v0
.end method
