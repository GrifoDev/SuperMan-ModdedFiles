.class public final Landroid/media/tv/TvInputInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field private static final LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private mCanRecord:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private mIconStandby:Landroid/graphics/drawable/Icon;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelResId:I

.field private mParentId:Ljava/lang/String;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSetupActivity:Ljava/lang/String;

.field private mTunerCount:Ljava/lang/Integer;

.field private mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.TvInputService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid component. Can\'t find the service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resolveInfo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method private static generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "/HDMI%04X%02X"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "HW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseServiceMetadata(I)V
    .locals 15

    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v10, "android.media.tv.input"

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No android.media.tv.input meta-data found for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v10

    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    if-eqz v11, :cond_9

    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v2

    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed reading meta-data for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_1
    :try_start_4
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "tv-input"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Meta-data does not start with tv-input tag for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :catchall_1
    move-exception v10

    goto :goto_0

    :cond_4
    sget-object v10, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    if-nez v10, :cond_5

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    :cond_5
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v10, :cond_6

    if-nez p1, :cond_6

    const/4 v10, 0x3

    const/4 v12, 0x1

    invoke-virtual {v7, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    :cond_6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_2
    if-eqz v11, :cond_a

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v1

    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No resources found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :catch_3
    move-exception v11

    goto :goto_2

    :catch_4
    move-exception v12

    if-nez v11, :cond_8

    move-object v11, v12

    goto/16 :goto_1

    :cond_8
    if-eq v11, v12, :cond_0

    :try_start_7
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_a
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvInputInfo;
    .locals 20

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ef

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    if-eqz v1, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/tv/TvInputInfo$Builder;->parseServiceMetadata(I)V

    new-instance v1, Landroid/media/tv/TvInputInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    if-nez v12, :cond_3

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZILandroid/hardware/hdmi/HdmiDeviceInfo;ZLjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo;)V

    return-object v1

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_2
.end method

.method public setCanRecord(Z)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TvInputInfo"

    const-string/jumbo v1, "TvInputHardwareInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3

    if-nez p2, :cond_0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLabel(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Label text is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Resource ID for label is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    return-object p0
.end method

.method public setTunerCount(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TvInputInfo"

    const-string/jumbo v1, "mHdmiDeviceInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-object p0
.end method
