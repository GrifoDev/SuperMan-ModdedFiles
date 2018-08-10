.class final synthetic Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_5212(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$5;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$5;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
