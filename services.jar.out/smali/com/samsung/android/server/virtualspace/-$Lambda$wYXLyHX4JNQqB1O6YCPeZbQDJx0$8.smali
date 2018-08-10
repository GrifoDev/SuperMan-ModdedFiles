.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:I

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f5:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f0:I

    iget v2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f1:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f2:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f3:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f4:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$-com_samsung_android_server_virtualspace_VSSession_13373(IIIII)V

    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f0:I

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f1:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f2:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f3:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f4:I

    iput-object p6, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;->$m$0()V

    return-void
.end method
