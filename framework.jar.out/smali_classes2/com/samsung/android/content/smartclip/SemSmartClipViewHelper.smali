.class public Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;
.super Ljava/lang/Object;
.source "SemSmartClipViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSmartClipViewHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetaTag(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .prologue
    const/4 v3, 0x0

    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    const-string/jumbo v1, "SemSmartClipViewHelper"

    const-string/jumbo v2, "addMetaTag : Have null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v3

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    .line 52
    .local v0, "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    .end local v0    # "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 54
    .restart local v0    # "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    .line 57
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x1

    return v1

    .line 61
    .end local v0    # "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    :cond_3
    const-string/jumbo v1, "SemSmartClipViewHelper"

    const-string/jumbo v2, "addMetaTag : Invalid metatag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v3
.end method

.method public static clearAllMetaTags(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    move-result v0

    return v0
.end method

.method public static extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p2, "resultElement"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 158
    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The view is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v2

    .line 162
    :cond_0
    if-nez p2, :cond_1

    .line 163
    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v2

    .line 167
    :cond_1
    if-nez p1, :cond_2

    .line 168
    const-string/jumbo v0, "SemSmartClipViewHelper"

    const-string/jumbo v1, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v2

    .line 172
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v0

    return v0
.end method

.method public static getMetaTags(Landroid/view/View;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public static removeMetaTag(Landroid/view/View;Ljava/lang/String;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    return v1

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    .line 79
    .local v0, "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    .line 80
    :cond_2
    return v1

    .line 83
    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipDataExtractionListener(Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public static setMetaTags(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagArray"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    .prologue
    .line 109
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    .line 114
    const/4 v0, 0x1

    return v0
.end method
