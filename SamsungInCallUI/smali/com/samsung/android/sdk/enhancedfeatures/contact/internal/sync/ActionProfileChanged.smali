.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;


# static fields
.field private static final MAX_PROFILE_IMAGE_COUNT:I = 0xa

.field private static final PREF_FILE:Ljava/lang/String; = "contact_pref"

.field private static final PREF_MAX_PROFILE_IMAGE_COUNT:Ljava/lang/String; = "max_profile_image_count"

.field private static final TAG:Ljava/lang/String;

.field private static final contentId:I = 0x2


# instance fields
.field private agentCPO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;",
            ">;"
        }
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private excludingItemsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private imageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;"
        }
    .end annotation
.end field

.field private insertprofileUrl:[Ljava/lang/String;

.field private insertprofileno:I

.field private mAddressChanged:Z

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContext:Landroid/content/Context;

.field private mDeletedPhotoPath:Ljava/lang/String;

.field private mDeletedPhotoUrl:Ljava/lang/String;

.field private mEmailChanged:Z

.field private mEventChanged:Z

.field private mHavePhotoDeletedMimeType:Z

.field private mNameChanged:Z

.field private mOrganizationChanged:Z

.field private mPhotoChanged:Z

.field private mPhotoDeleted:Z

.field private mStatusMessage:Ljava/lang/String;

.field private mSubImageCount:I

.field private profilepath:Ljava/lang/String;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    iput-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mHavePhotoDeletedMimeType:Z

    iput-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoPath:Ljava/lang/String;

    return-void
.end method

.method private addImageInfoToList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getMyProifleImage(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v5

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v6, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    if-eqz v5, :cond_6

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const-string v2, "data14"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "data14"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_8

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v0, -0x1

    :try_start_2
    aget-object v2, v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertUrl: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v2, "is_primary"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setImageUrl(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v6, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    const/16 v6, 0xa

    if-le v2, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image Count MAX ~~ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_4
    const-string v2, "data15"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string v7, "data15"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto/16 :goto_0

    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move-object v2, v1

    move v1, v4

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_4
    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_4

    :cond_8
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private applyIndividualItems(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setEmail(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setEvent(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setAddress(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private changeEventInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v1, "-"

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method private checkExcludingItemList(Landroid/database/Cursor;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string v2, "mimetype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is excluded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "CursorIndexOutOfBoundsException is occured, but discard this"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkStatusMessage(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->getProfileStatusMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setStatus(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "data12"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data15"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingByte([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "data12"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data14"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingUrl(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static deleteProfileImageFromOrsServer(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "data14"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private static deleteProfileImageUsingByte([BLjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteProfileImageUsingByte filePath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "nas53yzc3k"

    new-instance v5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageByByteBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to deleteProfileImageUsingByte result code ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2
.end method

.method private static deleteProfileImageUsingUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getImagUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteProfileImageUsingUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "nas53yzc3k"

    new-instance v5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageToORSBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to deleteProfileImageUsingUrl image result code ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2
.end method

.method private detectChanged(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "mimetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    goto :goto_0

    :cond_2
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v0, "data2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "detectChanged - IllegalStateException is occured"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    goto :goto_0

    :cond_3
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    goto :goto_0

    :cond_4
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto :goto_0
.end method

.method private equalsPhotoByte(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string v1, "data15"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private equalsPhotoFileId(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data14"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static getImagUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoID ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method private getMaxImageNo()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    const-string v1, "contact_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    const-string v1, "max_profile_image_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get max image count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "data13"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "data14"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "profile"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string v2, "_id=?"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v2, "data12"

    aget-object v3, v1, v6

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v2, "data13"

    aget-object v3, v1, v5

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v0, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no existing imageurl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v1, "data15"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v0, "data13"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existing imageurl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "mimetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private makeImageInfoList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->addImageInfoToList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getMaxImageNo()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_image_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   max_image_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    if-ge v2, v1, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->setMaxImageNo(I)V

    :cond_1
    return-void
.end method

.method private photoNotExist(Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string v1, "data14"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readUriData(Landroid/net/Uri;)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method private setMaxImageNo(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    const-string v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "max_profile_image_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set max image count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private uploadProfileImageList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;->setImgs(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadProfileImageList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uploadProfileImageList - SUCCESS"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContactException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "uploadProfileImageList - FAILED"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private uploadProfileImageUsingByte([B)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "uploadProfileImageUsingByte = "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nas53yzc3k"

    array-length v4, p1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    :goto_1
    return-object v8

    :catch_0
    move-exception v0

    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v3, v7

    :goto_3
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v7

    :goto_5
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_1
    :goto_6
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to upload me profile image result code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_3

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method private uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v7, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadProfileImageUsingUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getImagUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->readUriData(Landroid/net/Uri;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v4, v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadProfileImageUsingUrl imageBytesLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dataStream.available= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nas53yzc3k"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    move-object v0, v7

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v8

    :goto_3
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    move-object v0, v8

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v3, v8

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    move-object v0, v8

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_6
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_7
    throw v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to upload me profile image result code ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v3, v8

    move-object v0, v8

    goto :goto_0
.end method


# virtual methods
.method public addOffEntry(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyBatch()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStatusMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getResult()Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 15

    new-instance v7, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v0, "SER"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "mimetype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    if-eqz v0, :cond_2

    const-string v0, "data2"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data3"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEmail(Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;)V

    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    if-eqz v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResult() - cursor size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "all profile image is deleted"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->setMaxImageNo(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageInfoList Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageList(Ljava/util/ArrayList;)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkStatusMessage(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->applyIndividualItems(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v0

    return-object v0

    :cond_9
    :try_start_1
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    if-eqz v0, :cond_2

    const-string v0, "data2"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data7"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data8"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data10"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_a

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "data3"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "data4"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "data5"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "data6"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "data9"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setD1(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setStreet(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setPobox(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setD6(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setPostcode(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setcity(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setRegion(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setCountry(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addAddress(Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_b
    :try_start_3
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-eqz v0, :cond_e

    const-string v0, "data2"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    const-string v0, "data2"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_c

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->changeEventInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    const-string v3, "data3"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data14"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data15"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    invoke-direct {v9, v2, v0}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD14(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD15(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEvent(Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    :cond_e
    :try_start_4
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setLabel(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD14(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD15(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEvent(Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data2"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v6, :cond_10

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v7, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string v2, "data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data4"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data5"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    goto/16 :goto_0

    :cond_12
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "mimetype = ? OR mimetype = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "vnd.android.cursor.item/photo"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "vnd.android.cursor.item/photo_deleted"

    aput-object v9, v4, v5

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_13

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact Photo Count :  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->makeImageInfoList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_13
    if-eqz v3, :cond_14

    if-eqz v2, :cond_15

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_14
    :goto_3
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setImageUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_a
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :cond_15
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    :goto_4
    if-eqz v3, :cond_16

    if-eqz v2, :cond_17

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_16
    :goto_5
    :try_start_e
    throw v0

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_17
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :cond_18
    :try_start_f
    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    iget-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    iget-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    iget-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->photoNotExist(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onChanged : profile image not exist "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->equalsPhotoFileId(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onChanged : Same Photo ID ~~~"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileDataWithImageUrl(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->equalsPhotoByte(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onChanged : Same Photo ~~~"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto/16 :goto_0

    :cond_5
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V

    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mHavePhotoDeletedMimeType:Z

    if-eqz v0, :cond_2

    const-string v0, "vnd.android.cursor.item/photo"

    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data13"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoUrl:Ljava/lang/String;

    const-string v0, "data12"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoPath:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageFromOrsServer(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/photo_deleted"

    const-string v1, "mimetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mDeletedPhotoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    const-string v0, "mimetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "uploadProfileImage result is NULL!!!!"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setHavePhotoDeletedMimeType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mHavePhotoDeletedMimeType:Z

    return-void
.end method
