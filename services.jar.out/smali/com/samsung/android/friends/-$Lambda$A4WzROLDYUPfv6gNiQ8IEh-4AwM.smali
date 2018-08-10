.class final synthetic Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/friends/FrsServiceImpl;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->-com_samsung_android_friends_FrsServiceImpl-mthref-0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
