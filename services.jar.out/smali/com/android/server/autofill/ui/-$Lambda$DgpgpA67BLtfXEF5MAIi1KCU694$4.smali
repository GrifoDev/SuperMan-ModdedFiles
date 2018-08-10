.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/FillUi;

    iget v1, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;->-$f0:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$-com_android_server_autofill_ui_FillUi_7794(II)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;->-$f0:I

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$4;->$m$0(I)V

    return-void
.end method
