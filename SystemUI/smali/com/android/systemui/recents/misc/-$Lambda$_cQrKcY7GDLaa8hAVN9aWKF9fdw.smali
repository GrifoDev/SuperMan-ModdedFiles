.class final synthetic Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$-com_android_systemui_recents_misc_SystemServicesProxy_15036(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;->$m$0(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
