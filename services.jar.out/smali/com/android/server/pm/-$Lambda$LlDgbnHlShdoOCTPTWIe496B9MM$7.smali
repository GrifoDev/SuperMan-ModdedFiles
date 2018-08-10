.class final synthetic Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:J


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$7;->-$f0:J

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_6855(JLandroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$7;->-$f0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$7;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
