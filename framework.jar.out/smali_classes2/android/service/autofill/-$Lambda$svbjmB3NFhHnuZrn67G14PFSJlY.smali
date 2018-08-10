.class final synthetic Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/service/autofill/AutofillService;

    invoke-virtual {v0, p1}, Landroid/service/autofill/AutofillService;->lambda$-android_service_autofill_AutofillService_15826(Landroid/os/Message;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final executeMessage(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;->$m$0(Landroid/os/Message;)V

    return-void
.end method
