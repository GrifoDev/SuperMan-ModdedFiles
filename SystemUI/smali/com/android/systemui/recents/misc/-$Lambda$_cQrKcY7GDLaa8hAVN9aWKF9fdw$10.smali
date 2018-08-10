.class final synthetic Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-wide v2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f1:J

    iget v1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f0:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$-com_android_systemui_recents_misc_SystemServicesProxy_77573(JI)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f0:I

    iput-wide p2, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f1:J

    iput-object p4, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;->$m$0()V

    return-void
.end method
