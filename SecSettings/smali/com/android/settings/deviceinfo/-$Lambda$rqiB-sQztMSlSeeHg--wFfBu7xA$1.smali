.class final synthetic Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$-com_android_settings_deviceinfo_StorageDashboardFragment$IconLoaderCallbacks_13385()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getUserIcons()Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$1;->$m$0()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
