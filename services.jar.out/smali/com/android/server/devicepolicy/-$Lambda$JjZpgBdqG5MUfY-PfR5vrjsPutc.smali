.class final synthetic Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;->-$f0:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->lambda$-com_android_server_devicepolicy_NetworkLoggingHandler_9940(J)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;->-$f0:J

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/-$Lambda$JjZpgBdqG5MUfY-PfR5vrjsPutc;->$m$0()V

    return-void
.end method
