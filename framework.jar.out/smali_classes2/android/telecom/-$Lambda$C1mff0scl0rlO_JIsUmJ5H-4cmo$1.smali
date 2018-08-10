.class final synthetic Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Call;

    iget v2, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f0:I

    invoke-static {v0, v1, v2}, Landroid/telecom/Call;->lambda$-android_telecom_Call_73214(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f0:I

    iput-object p2, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/-$Lambda$C1mff0scl0rlO_JIsUmJ5H-4cmo$1;->$m$0()V

    return-void
.end method
