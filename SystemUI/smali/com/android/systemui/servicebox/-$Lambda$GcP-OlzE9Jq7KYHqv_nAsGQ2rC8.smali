.class final synthetic Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->lambda$-com_android_systemui_servicebox_KeyguardServiceBoxWindowManager_8264(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final layoutParamsUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/-$Lambda$GcP-OlzE9Jq7KYHqv_nAsGQ2rC8;->$m$0()V

    return-void
.end method
