.class final synthetic Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f3:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f4:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;

    iget-boolean v4, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f0:Z

    iget-object v5, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$-com_android_systemui_recents_misc_SystemServicesProxy_70411(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;ZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;->$m$0()V

    return-void
.end method
