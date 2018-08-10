.class final synthetic Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;->-$f0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/ContainerUtil;->lambda$-com_android_server_trust_ContainerUtil_3162(ILcom/android/server/SdpManagerService;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;->-$f0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/-$Lambda$U8zT3vw5w2DzUNsMbf42FAUqBHE$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
