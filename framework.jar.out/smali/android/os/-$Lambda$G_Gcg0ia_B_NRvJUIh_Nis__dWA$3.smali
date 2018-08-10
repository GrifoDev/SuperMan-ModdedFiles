.class final synthetic Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)Z
    .locals 2

    iget-object v0, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;->-$f0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;->-$f1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroid/os/HidlSupport;->lambda$-android_os_HidlSupport_2349([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;->$m$0(I)Z

    move-result v0

    return v0
.end method
