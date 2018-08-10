.class final synthetic Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:J

.field private final synthetic -$f2:J

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f3:Ljava/lang/Object;

    check-cast v0, [B

    iget-wide v1, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f1:J

    iget-object v3, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f4:Ljava/lang/Object;

    check-cast v3, [B

    iget-wide v4, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f2:J

    iget v6, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f0:I

    move-object v7, p1

    check-cast v7, Lcom/android/internal/widget/ILockSettings;

    invoke-static/range {v0 .. v7}, Lcom/android/server/SdpManagerService;->lambda$-com_android_server_SdpManagerService_179704([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(IJJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f0:I

    iput-wide p2, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f1:J

    iput-wide p4, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f2:J

    iput-object p6, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f3:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$lhXyqUMYqEEsOESeK7W8eqkbJis$8;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
