.class public final Lcom/samsung/android/app/SemExecutableInfo;
.super Ljava/lang/Object;
.source "SemExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemExecutableInfo$1;
    }
.end annotation


# static fields
.field private static final CLASSNAME_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "SecProductFeature_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CSC_FEATURE_PREFIX:Ljava/lang/String; = "CscFeature_"

.field private static final DEBUG:Z

.field public static final LAUNCH_TYPE_ACTIVITY:I = 0x0

.field public static final LAUNCH_TYPE_ACTIVITY_FOR_RESULT:I = 0x3

.field public static final LAUNCH_TYPE_BROADCAST:I = 0x2

.field public static final LAUNCH_TYPE_SERVICE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SemExecutableInfo"

.field private static final MD_LABEL_EXECUTABLE:Ljava/lang/String; = "com.samsung.android.support.executable"

.field private static final ORDER_INIT_VALUE:I = -0x270c

.field private static final ORDER_INVALID_FORMAT:I = -0x270e

.field private static final ORDER_NOT_ALLOWED:I = -0x270d

.field private static final ORDER_OUT_OF_RANGE:I = -0x270f

.field private static final PACKAGE_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "com.sec.android.app."

.field private static final SEC_FLOATING_FEATURE_PREFIX:Ljava/lang/String; = "SEC_FLOATING_FEATURE_"

.field private static final SEC_PRODUCT_FEATURE_PREFIX:Ljava/lang/String; = "SEC_PRODUCT_FEATURE_"

.field private static final XML_ELEMENT_COMMAND:Ljava/lang/String; = "command"

.field private static final XML_ELEMENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ELEMENT_EXECUTABLE:Ljava/lang/String; = "executable"

.field private static final XML_ELEMENT_EXTRA_ATTR:Ljava/lang/String; = "extras-attr"

.field private static final XML_ELEMENT_EXTRA_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final XML_ELEMENT_EXTRA_ATTR_COMPONENTNAME:Ljava/lang/String; = "componentName"

.field private static final XML_ELEMENT_EXTRA_ATTR_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_ELEMENT_EXTRA_ATTR_FEATURE:Ljava/lang/String; = "feature"

.field private static final XML_ELEMENT_EXTRA_ATTR_INTETNACTION:Ljava/lang/String; = "action"

.field private static final XML_ELEMENT_EXTRA_ATTR_LAUCHMODE:Ljava/lang/String; = "launchMode"

.field private static final XML_ELEMENT_EXTRA_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "activityForResult"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field private static final XML_ELEMENT_ICON:Ljava/lang/String; = "icon"

.field private static final XML_ELEMENT_LABEL:Ljava/lang/String; = "label"

.field private static final XML_ELEMENT_LAUCHMODE_CLEARTOP:Ljava/lang/String; = "clearTop"

.field private static final XML_ELEMENT_LAUCHMODE_NEWTASK:Ljava/lang/String; = "newTask"

.field private static final XML_ELEMENT_LAUCHMODE_SINGLETOP:Ljava/lang/String; = "singleTop"

.field private static final XML_ELEMENT_SMALL_ICON:Ljava/lang/String; = "smallIcon"


# instance fields
.field mAction:Ljava/lang/String;

.field mActivityLaunchMode:Ljava/lang/String;

.field mBundle:Landroid/os/Bundle;

.field mCategory:Ljava/lang/String;

.field mComponentName:Ljava/lang/String;

.field mEnabled:Z

.field mFeatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIconId:I

.field mLabelId:I

.field mLaunchType:I

.field mPackageName:Ljava/lang/String;

.field mSmallIconId:I

.field mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    return-void
.end method

.method private addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "launchMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "activity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "broadcast"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v7, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "activityForResult"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "category"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "packageName"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string/jumbo v4, "componentName"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string/jumbo v4, "feature"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "extras"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SemExecutableInfo"

    const-string/jumbo v6, "Invalid SemExecutableInfo"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v8

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disabled SemExecutableInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v8

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    :cond_4
    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid packageName or componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v8

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getIconId()I

    move-result v5

    if-nez v5, :cond_9

    :cond_7
    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid label or icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v8

    :cond_9
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_13

    const-string/jumbo v5, "CscFeature_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    return v8

    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v8

    :cond_c
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    return v8

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v8

    :cond_f
    const-string/jumbo v5, "SEC_PRODUCT_FEATURE_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    return v8

    :cond_10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    return v8

    :cond_11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_12

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v8

    :cond_13
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_16

    if-eqz v1, :cond_14

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_16

    :cond_14
    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v8

    :cond_16
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    if-eqz v0, :cond_17

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_19

    :cond_17
    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_18

    const-string/jumbo v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No feature name is provided for the value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v8

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1a
    return v7
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemExecutableInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t make context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "SemExecutableInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V
    .locals 11

    const-string/jumbo v3, ""

    const/16 v2, -0x270c

    if-nez p1, :cond_0

    const/16 v2, -0x270d

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getCategories()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string/jumbo v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_9

    aget-object v5, v0, v7

    const-string/jumbo v9, "@"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v4, v6

    packed-switch v4, :pswitch_data_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v9, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SemExecutableInfo"

    const-string/jumbo v10, "Invalid category format for category order"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v9, -0x270d

    if-eq v2, v9, :cond_3

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v9, -0x3e8

    if-lt v2, v9, :cond_2

    const/16 v9, 0x3e8

    if-le v2, v9, :cond_3

    :cond_2
    const/16 v2, -0x270f

    :cond_3
    const/16 v9, -0x270f

    if-eq v2, v9, :cond_4

    const/16 v9, -0x270d

    if-ne v2, v9, :cond_5

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/16 v9, -0x270e

    if-eq v2, v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v1

    const/16 v2, -0x270e

    :try_start_1
    sget-boolean v9, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "SemExecutableInfo"

    const-string/jumbo v10, "Invalid order"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    const/16 v8, -0x270f

    if-eq v2, v8, :cond_7

    const/16 v8, -0x270d

    if-ne v2, v8, :cond_8

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    throw v7

    :cond_8
    const/16 v8, -0x270e

    if-eq v2, v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/SemExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private getBundleString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v35, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v35, :cond_0

    const-string/jumbo v35, "SemExecutableInfo"

    const-string/jumbo v36, "scan scanExecutableInfos start"

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "com.samsung.android.support.executable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    const/16 v27, 0x280

    new-instance v35, Landroid/content/Intent;

    const-string/jumbo v36, "com.samsung.android.support.executable"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    new-instance v35, Landroid/content/Intent;

    const-string/jumbo v36, "com.samsung.android.support.executable"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v29

    new-instance v35, Landroid/content/Intent;

    const-string/jumbo v36, "com.samsung.android.support.executable"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v35, 0x0

    aput-object v4, v17, v35

    const/16 v35, 0x1

    aput-object v29, v17, v35

    const/16 v35, 0x2

    aput-object v28, v17, v35

    const/16 v35, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v36, v0

    :goto_0
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_13

    aget-object v24, v17, v35

    sget-boolean v37, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v37, :cond_1

    const-string/jumbo v37, "SemExecutableInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "list size = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v21, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v37, v0

    xor-int/lit8 v21, v37, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v37, v0

    xor-int/lit8 v20, v37, 0x1

    :cond_3
    :goto_2
    if-nez v21, :cond_4

    if-eqz v20, :cond_6

    :cond_4
    sget-boolean v37, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v37, :cond_2

    const-string/jumbo v37, "SemExecutableInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "skip disable component: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v37, v0

    xor-int/lit8 v21, v37, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    move/from16 v37, v0

    xor-int/lit8 v20, v37, 0x1

    goto :goto_2

    :cond_6
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    const-string/jumbo v38, "com.samsung.android.support.executable"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v34

    if-eqz v34, :cond_2

    const/16 v23, 0x0

    const/16 v31, 0x0

    const/16 v30, 0x0

    invoke-interface/range {v34 .. v34}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v32

    :goto_3
    const/16 v37, 0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    invoke-interface/range {v34 .. v34}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v37, 0x2

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_d

    const-string/jumbo v37, "executable"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    const/16 v31, 0x1

    :cond_7
    const-string/jumbo v37, "command"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    if-nez v31, :cond_8

    new-instance v37, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v38, "executable element wasn\'t started"

    invoke-direct/range {v37 .. v38}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v14

    const-string/jumbo v37, "SemExecutableInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Invalid attribute in metadata for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const/16 v30, 0x1

    :try_start_1
    invoke-static/range {v34 .. v34}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v9}, Lcom/samsung/android/app/SemExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v23

    :cond_9
    const-string/jumbo v37, "extras-attr"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    if-eqz v31, :cond_a

    xor-int/lit8 v37, v30, 0x1

    if-eqz v37, :cond_b

    :cond_a
    new-instance v37, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v38, "executable or command element wasn\'t started"

    invoke-direct/range {v37 .. v38}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v15

    const-string/jumbo v37, "SemExecutableInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Reading SemExecutableInfo metadata for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v15}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_b
    :try_start_2
    invoke-static/range {v34 .. v34}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    if-eqz v23, :cond_c

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/SemExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_c
    :goto_4
    invoke-interface/range {v34 .. v34}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v32

    goto/16 :goto_3

    :cond_d
    const/16 v37, 0x3

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    const-string/jumbo v37, "executable"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_e

    const/16 v31, 0x0

    :cond_e
    const-string/jumbo v37, "command"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    const/16 v30, 0x0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/SemExecutableInfo;->checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z

    move-result v37

    if-eqz v37, :cond_11

    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v33

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/samsung/android/app/SemExecutableInfo;->examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/samsung/android/app/SemExecutableInfo;->setId(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_f

    const/4 v7, 0x1

    goto :goto_5

    :cond_10
    if-nez v7, :cond_11

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_11
    const/16 v23, 0x0

    goto :goto_4

    :catch_2
    move-exception v13

    const-string/jumbo v37, "SemExecutableInfo"

    const-string/jumbo v38, "Unknown Exception while Reading SemExecutableInfo metadata"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v13}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_3
    move-exception v12

    const-string/jumbo v37, "SemExecutableInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Reading SemExecutableInfo metadata for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v12}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    :cond_13
    sget-boolean v35, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v35, :cond_14

    const-string/jumbo v35, "SemExecutableInfo"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "scan SemExecutableInfo end: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-object v25
.end method

.method private setId(Ljava/lang/String;)V
    .locals 10

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "executable"

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "SemExecutableInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use defined mUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SemExecutableInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not set mUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/SemExecutableInfo;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/SemExecutableInfo;

    iget-boolean v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    iget-boolean v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    iget v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    iget v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    iget v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    iget v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    :cond_7
    return v3

    :cond_8
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-nez v1, :cond_7

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    :cond_a
    return v3

    :cond_b
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    :cond_d
    return v3

    :cond_e
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-nez v1, :cond_d

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    :cond_10
    return v3

    :cond_11
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_10

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    :cond_13
    return v3

    :cond_14
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-nez v1, :cond_13

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    :cond_16
    return v3

    :cond_17
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-nez v1, :cond_16

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    :cond_19
    return v3

    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_19

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    :cond_1c
    return v3

    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-nez v1, :cond_1c

    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    :cond_1f
    return v3

    :cond_20
    iget-object v1, v0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-nez v1, :cond_1f

    :cond_21
    return v4
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityLaunchMode()I
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string/jumbo v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v2, v3, v1

    const-string/jumbo v4, "newTask"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    :cond_2
    :goto_1
    const-string/jumbo v4, "clearTop"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "singleTop"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    goto :goto_1

    :cond_5
    return v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    return v0
.end method

.method public getLaunchType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemExecutableInfo{enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", labelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", iconIId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", smallIconIId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", action=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", componentName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", launchMode=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", featureName =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", featureValue = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mBundle =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
