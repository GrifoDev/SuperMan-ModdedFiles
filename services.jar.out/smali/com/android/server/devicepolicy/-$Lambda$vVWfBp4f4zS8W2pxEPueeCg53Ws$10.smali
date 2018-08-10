.class final synthetic Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;->-$f0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$-com_android_server_devicepolicy_DevicePolicyManagerService_675666(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;->-$f0:I

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/-$Lambda$vVWfBp4f4zS8W2pxEPueeCg53Ws$10;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
