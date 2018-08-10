.class final synthetic Lcom/android/server/autofill/-$Lambda$nIY0QhGOcwXKKmuVD-pf4oRdtr0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$nIY0QhGOcwXKKmuVD-pf4oRdtr0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->lambda$-com_android_server_autofill_AutofillManagerServiceImpl_4079(Landroid/os/Message;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$Lambda$nIY0QhGOcwXKKmuVD-pf4oRdtr0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final executeMessage(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/-$Lambda$nIY0QhGOcwXKKmuVD-pf4oRdtr0;->$m$0(Landroid/os/Message;)V

    return-void
.end method
