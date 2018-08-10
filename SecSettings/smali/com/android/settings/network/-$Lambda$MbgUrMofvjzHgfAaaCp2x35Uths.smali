.class final synthetic Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/network/NetworkResetActionMenuController;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/NetworkResetActionMenuController;->lambda$-com_android_settings_network_NetworkResetActionMenuController_1598(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;->$m$0(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
