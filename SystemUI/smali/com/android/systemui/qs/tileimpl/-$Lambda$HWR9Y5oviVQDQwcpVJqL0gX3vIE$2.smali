.class final synthetic Lcom/android/systemui/qs/tileimpl/-$Lambda$HWR9Y5oviVQDQwcpVJqL0gX3vIE$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$HWR9Y5oviVQDQwcpVJqL0gX3vIE$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$-com_android_systemui_qs_tileimpl_QSTileBaseView_4410(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/-$Lambda$HWR9Y5oviVQDQwcpVJqL0gX3vIE$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/-$Lambda$HWR9Y5oviVQDQwcpVJqL0gX3vIE$2;->$m$0(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
