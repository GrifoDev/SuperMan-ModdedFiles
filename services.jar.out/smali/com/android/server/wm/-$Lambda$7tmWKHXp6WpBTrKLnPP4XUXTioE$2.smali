.class final synthetic Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Region;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->lambda$-com_android_server_wm_MultiWindowManagerInternal_21278(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
