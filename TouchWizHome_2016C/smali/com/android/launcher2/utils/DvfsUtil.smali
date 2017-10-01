.class public Lcom/android/launcher2/utils/DvfsUtil;
.super Ljava/lang/Object;
.source "DvfsUtil.java"


# static fields
.field public static GPU_DEFAULT_TIME_OUT:I = 0x0

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.android.launcher2"


# instance fields
.field private final GPU_DEFAULT_BOOSTING_INDEX:I

.field private mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mSupportGpuFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    sput v0, Lcom/android/launcher2/utils/DvfsUtil;->GPU_DEFAULT_TIME_OUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->GPU_DEFAULT_BOOSTING_INDEX:I

    const-string v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher2"

    const/16 v3, 0x10

    invoke-static {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/launcher2/utils/DvfsUtil;->getGpuBoostinIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/utils/DvfsUtil;->mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v3, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_1
    return-void
.end method

.method private getGpuBoostinIndex(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "j3popelte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a3xelte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a5xelte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a7xelte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public acquireTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/DvfsUtil;->mSupportGpuFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/DvfsUtil;->mGpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_0
    return-void
.end method
