.class final synthetic Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->lambda$-com_android_systemui_lockstar_PluginLockStarManager_4010(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;->$m$0(Landroid/net/Uri;)V

    return-void
.end method
