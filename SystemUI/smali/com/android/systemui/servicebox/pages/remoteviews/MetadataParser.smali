.class public Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;,
        Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mMetadataHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataLoadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPostExecuteRunnable:Ljava/lang/Runnable;

.field private mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPostExecuteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPostExecuteRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->addMetadataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetadataInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->sendBroadcast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPostExecuteRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataLoadingTask:Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private addMetadataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMetadataInfo() return : already added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v1, p2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMetadataInfo() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private createDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMetadataInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    const-string/jumbo v3, "com.samsung.android.servicebox.remoteview.enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/lang/Integer;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_2
    return-object v4

    :cond_3
    new-instance v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->createDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private removeMetadataInfo(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMetadataInfo() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private sendBroadcast()V
    .locals 10

    sget-object v7, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "sendBroadcast()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    iget-object v7, v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->pkgName:Ljava/lang/String;

    aput-object v7, v6, v0

    sget-object v7, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.intent.action.UPDATE_SERVICEBOX_REMOTEVIEWS_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x1000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateMetadataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMetadataInfo() key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v3, p2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v1
.end method


# virtual methods
.method public loadAllMetadatas(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadAllMetadatas()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadAllMetadatas() return : The data is already configured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPostExecuteRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataLoadingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 8

    sget-object v6, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onConfigurationChanged()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetadataInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateMetadataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->sendBroadcast()V

    :cond_2
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removeMetadataInfo(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->sendBroadcast()V

    :cond_0
    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;)V
    .locals 7

    sget-object v4, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPackageUpdated() key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetadataInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removeMetadataInfo(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->sendBroadcast()V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetadataHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->addMetadataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->sendBroadcast()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
