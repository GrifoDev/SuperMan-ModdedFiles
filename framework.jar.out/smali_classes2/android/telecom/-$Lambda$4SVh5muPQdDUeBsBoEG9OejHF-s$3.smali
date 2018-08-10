.class final synthetic Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection;

    iget v1, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;->-$f0:I

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection;->lambda$-android_telecom_Connection_106960(ILandroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;->-$f0:I

    iput-object p2, p0, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$3;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
