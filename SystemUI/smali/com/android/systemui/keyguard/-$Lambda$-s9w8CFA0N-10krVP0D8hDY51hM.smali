.class final synthetic Lcom/android/systemui/keyguard/-$Lambda$-s9w8CFA0N-10krVP0D8hDY51hM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$Lambda$-s9w8CFA0N-10krVP0D8hDY51hM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->-com_android_systemui_keyguard_DismissCallbackRegistry-mthref-0(Lcom/android/systemui/keyguard/DismissCallbackWrapper;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$Lambda$-s9w8CFA0N-10krVP0D8hDY51hM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/-$Lambda$-s9w8CFA0N-10krVP0D8hDY51hM;->$m$0()V

    return-void
.end method
