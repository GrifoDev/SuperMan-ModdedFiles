.class final synthetic Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;->-$f0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LockSettingsService$3;->lambda$-com_android_server_LockSettingsService$3_25671(ILcom/android/server/SdpManagerService;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;->-$f0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
