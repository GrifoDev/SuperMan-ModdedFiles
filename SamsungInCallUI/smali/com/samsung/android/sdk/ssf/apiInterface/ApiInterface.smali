.class public Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;
.super Ljava/lang/Object;


# static fields
.field public static final SEM_FEATURE_SAMSUNG_EXPERIENCE_MOBILE:Ljava/lang/String; = "com.samsung.feature.samsung_experience_mobile"

.field private static final TAG:Ljava/lang/String;

.field private static isSemAvailableValue:Z

.field private static isSemAvailableValueInited:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    sput-boolean v1, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final isSemAvailable()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSemAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.os.SemSystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v2, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is null: isSemAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    :goto_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSemAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_0

    :cond_2
    sput-boolean v3, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_2
.end method
