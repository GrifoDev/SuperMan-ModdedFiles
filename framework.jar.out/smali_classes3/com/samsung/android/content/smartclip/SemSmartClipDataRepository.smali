.class public Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
.super Ljava/lang/Object;
.source "SemSmartClipDataRepository.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_AUDIO:Ljava/lang/String; = "music"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final CONTENT_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final CONTENT_TYPE_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FIELD_CAPTURED_IMAGE_PATH:Ljava/lang/String; = "captured_image_path"

.field protected static final FIELD_CAPTURED_IMAGE_STYLE:Ljava/lang/String; = "captured_image_style"

.field protected static final FIELD_CONTENT_RECT:Ljava/lang/String; = "content_rect"

.field protected static final FIELD_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field protected static final FIELD_META_TAGS:Ljava/lang/String; = "meta_tags"

.field protected static final FIELD_META_TAG_EXTRA_DATA:Ljava/lang/String; = "meta_tag_extra_value"

.field protected static final FIELD_META_TAG_TYPE:Ljava/lang/String; = "meta_tag_type"

.field protected static final FIELD_META_TAG_VALUE:Ljava/lang/String; = "meta_tag_value"

.field protected static final FIELD_REPOSITORY_ID:Ljava/lang/String; = "repository_id"

.field public static final IMAGE_STYLE_LASSO:I = 0x0

.field public static final IMAGE_STYLE_PIN_MODE:I = 0x3

.field public static final IMAGE_STYLE_RECTANGLE:I = 0x1

.field public static final IMAGE_STYLE_SEGMENTATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "SemSmartClipDataRepository"


# instance fields
.field protected mAppPackageName:Ljava/lang/String;

.field protected mCapturedImageFilePath:Ljava/lang/String;

.field protected mCapturedImageFileStyle:I

.field protected mContentRect:Landroid/graphics/Rect;

.field protected mContentType:Ljava/lang/String;

.field protected mCropper:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

.field private mPenWindowBorder:I

.field protected mRepositoryId:Ljava/lang/String;

.field protected mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

.field protected mTargetWindowLayer:I

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    invoke-direct {p0, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCropper:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFileStyle:I

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTargetWindowLayer:I

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    check-cast p1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCropper:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    iput p4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setupRepositoryFromString(Ljava/lang/String;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private setupRepositoryFromString(Ljava/lang/String;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 20

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "content_type"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "content_type"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    :cond_0
    const-string/jumbo v15, "repository_id"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "repository_id"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    :cond_1
    const-string/jumbo v15, "content_rect"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v15, "content_rect"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    :cond_2
    const-string/jumbo v15, "captured_image_path"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v15, "captured_image_path"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v15, "captured_image_style"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setCapturedImage(Ljava/lang/String;I)V

    :cond_3
    const-string/jumbo v15, "meta_tags"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v15, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v15}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    const-string/jumbo v15, "meta_tags"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v12, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v15, "meta_tag_type"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v15, "meta_tag_value"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    :goto_1
    :try_start_2
    const-string/jumbo v15, "meta_tag_extra_value"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string/jumbo v15, "SemSmartClipDataRepository"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Decoding : Length of extra data = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    invoke-direct {v11, v13, v14, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v15, v11}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->addMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v15, "SemSmartClipDataRepository"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "There is no meta value! type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v15, "SemSmartClipDataRepository"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "JSONException throwed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v3

    :try_start_4
    new-instance v11, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public determineContentType()Z
    .locals 15

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    :goto_0
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_7

    const/4 v3, 0x0

    const-string/jumbo v13, "url"

    invoke-virtual {p0, v13}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v3, 0x1

    :cond_1
    const-string/jumbo v13, "file_path_audio"

    invoke-virtual {p0, v13}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string/jumbo v13, "file_path_video"

    invoke-virtual {p0, v13}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string/jumbo v13, "file_path_image"

    invoke-virtual {p0, v13}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v3, :cond_6

    instance-of v13, v12, Landroid/webkit/WebView;

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "android.webkitsec.WebView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_1
    const-string/jumbo v13, "html"

    invoke-virtual {p0, v13}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget-object v13, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    invoke-virtual {v7, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.ChromeView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.samsung.content.sbrowser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "com.sec.chromium.content.browser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    const-string/jumbo v14, "com.google.android.youtube"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "PlayerView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo v6, "music"

    :goto_2
    iput-object v6, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    const/4 v13, 0x1

    return v13

    :cond_a
    if-eqz v4, :cond_b

    const-string/jumbo v6, "video"

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_c

    const-string/jumbo v6, "image"

    goto :goto_2

    :cond_c
    if-eqz v5, :cond_d

    const-string/jumbo v6, "youtube"

    goto :goto_2

    :cond_d
    if-eqz v1, :cond_e

    const-string/jumbo v6, "web"

    goto :goto_2

    :cond_e
    const-string/jumbo v6, "image"

    goto :goto_2
.end method

.method public dump(Z)Z
    .locals 3

    const-string/jumbo v0, "SemSmartClipDataRepository"

    const-string/jumbo v1, "----- Start of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemSmartClipDataRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "** Content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemSmartClipDataRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "** Meta area rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemSmartClipDataRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "** Captured image file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "SemSmartClipDataRepository"

    const-string/jumbo v1, "** mTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->dump()V

    :goto_0
    const-string/jumbo v0, "SemSmartClipDataRepository"

    const-string/jumbo v1, "** Element tree **"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;->dump()Z

    :cond_0
    const-string/jumbo v0, "SemSmartClipDataRepository"

    const-string/jumbo v1, "----- End of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "SemSmartClipDataRepository"

    const-string/jumbo v1, "mTags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encodeRepositoryToString()Ljava/lang/String;
    .locals 17

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "content_type"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRepositoryId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "repository_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRepositoryId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    iget v14, v3, Landroid/graphics/Rect;->left:I

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v14}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    iget v14, v3, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x1

    invoke-virtual {v9, v15, v14}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    iget v14, v3, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x2

    invoke-virtual {v9, v15, v14}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v15, 0x3

    invoke-virtual {v9, v15, v14}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    const-string/jumbo v14, "content_rect"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getCapturedImageFileStyle()I

    move-result v2

    if-eqz v1, :cond_3

    const-string/jumbo v14, "captured_image_path"

    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v14, "captured_image_style"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAllMetaTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v13

    if-eqz v13, :cond_7

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    if-eqz v4, :cond_4

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v14, "meta_tag_type"

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v14, "meta_tag_value"

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v14, v4, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    if-eqz v14, :cond_5

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v8

    const-string/jumbo v14, "SemSmartClipDataRepository"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Encoding : Length of extra data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "meta_tag_extra_value"

    const/4 v15, 0x0

    invoke-static {v8, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v14, "SemSmartClipDataRepository"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "JSONException throwed : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v14, ""

    return-object v14

    :cond_6
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_7

    const-string/jumbo v14, "meta_tags"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    return-object v14
.end method

.method public extractMetaTagFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllMetaTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-object v7

    :cond_0
    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {v6, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "plain_text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v3
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFileStyle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFileStyle:I

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    return-object v9

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    new-instance v2, Landroid/graphics/Rect;

    const v9, 0x1869f

    const v10, 0x1869f

    invoke-direct {v2, v9, v10, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    if-le v9, v10, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_2

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_3

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_4

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    if-le v9, v10, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_6

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    :cond_6
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_7

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    :cond_7
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_8

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    :cond_8
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_9

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    invoke-virtual {v4, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_b

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    return-object v9

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    cmpl-float v9, v9, v14

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    cmpl-float v9, v9, v14

    if-eqz v9, :cond_11

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v9, v5, v12

    if-eqz v9, :cond_11

    cmpl-float v9, v8, v12

    if-eqz v9, :cond_11

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    add-float/2addr v9, v13

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    add-float/2addr v9, v13

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    if-lez v9, :cond_10

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    if-ge v9, v10, :cond_d

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->left:I

    :cond_d
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_e

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    sub-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    :cond_e
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    if-ge v9, v10, :cond_f

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->top:I

    :cond_f
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_10

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mPenWindowBorder:I

    sub-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v3

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    mul-float/2addr v10, v8

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    :cond_11
    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedPlainTextTag()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;->collectPlainTextTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 9

    const/4 v8, 0x0

    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v7}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v3, v7}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "plain_text"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v3

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    invoke-virtual {v6, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_1
.end method

.method public getRepositoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRootElement:Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCropper:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    return-object v0
.end method

.method public getWindowLayer()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTargetWindowLayer:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFileStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTargetWindowLayer:I

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    const-class v1, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFileStyle:I

    return-void
.end method

.method public setCapturedImageFilePath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setCapturedImage(Ljava/lang/String;I)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setRepositoryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    return-void
.end method

.method public setWindowLayer(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTargetWindowLayer:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->determineContentType()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mRepositoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mCapturedImageFileStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAllMetaTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
