.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSSession;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f0:I

    iget v2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$-com_samsung_android_server_virtualspace_VSSession_14118(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f0:I

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f1:I

    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;->$m$0()V

    return-void
.end method
