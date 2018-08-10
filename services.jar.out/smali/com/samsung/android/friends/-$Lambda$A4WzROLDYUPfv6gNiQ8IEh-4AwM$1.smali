.class final synthetic Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f1:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f2:Ljava/lang/Object;

    check-cast v1, [B

    iget-boolean v2, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f0:Z

    check-cast p1, Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->lambda$-com_samsung_android_friends_FrsServiceImpl_10239([B[BZLcom/samsung/android/friends/cmdsvc/CmdSvc;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f0:Z

    iput-object p2, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
