.class final synthetic Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    check-cast p1, Lcom/android/settings/core/PreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$-com_android_settings_deviceinfo_StorageDashboardFragment$IconLoaderCallbacks_13808(Landroid/util/SparseArray;Lcom/android/settings/core/PreferenceController;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/-$Lambda$rqiB-sQztMSlSeeHg--wFfBu7xA$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
