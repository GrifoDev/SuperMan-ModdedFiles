.class final synthetic Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f1:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f2:Ljava/lang/Object;

    check-cast v2, [Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f3:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$-com_android_systemui_recents_misc_SystemServicesProxy_68681([I[Landroid/os/Bundle;Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;->$m$0()V

    return-void
.end method
