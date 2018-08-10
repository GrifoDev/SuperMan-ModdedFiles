.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/FillUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$-com_android_server_autofill_ui_FillUi_5115(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;->$m$0(Landroid/view/View;)V

    return-void
.end method
