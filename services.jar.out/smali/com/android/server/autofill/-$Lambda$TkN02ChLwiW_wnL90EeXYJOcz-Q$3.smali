.class final synthetic Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/Session;

    iget v2, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f0:I

    iget v3, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f1:I

    iget-object v1, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/autofill/Session;->lambda$-com_android_server_autofill_Session_23354(IILandroid/service/autofill/Dataset;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f0:I

    iput p2, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f1:I

    iput-object p3, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/-$Lambda$TkN02ChLwiW_wnL90EeXYJOcz-Q$3;->$m$0()V

    return-void
.end method
