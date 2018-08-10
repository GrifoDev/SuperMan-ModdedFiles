.class final synthetic Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->lambda$-android_telecom_Connection_107559(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
