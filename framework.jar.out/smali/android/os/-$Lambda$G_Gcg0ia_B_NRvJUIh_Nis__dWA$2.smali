.class final synthetic Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-static {v0, p1}, Landroid/os/HidlSupport;->lambda$-android_os_HidlSupport_2772(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
