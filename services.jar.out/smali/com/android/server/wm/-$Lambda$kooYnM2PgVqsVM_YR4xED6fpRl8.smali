.class final synthetic Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;->-$f0:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;->-$f1:Ljava/lang/Object;

    check-cast v1, [I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowStateAnimator;->lambda$-com_android_server_wm_WindowStateAnimator_119275([I[ILcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
