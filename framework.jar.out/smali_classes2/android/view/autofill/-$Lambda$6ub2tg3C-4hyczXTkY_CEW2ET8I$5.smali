.class final synthetic Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f2:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iget v3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f0:I

    iget v4, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f1:I

    iget-object v1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/content/IntentSender;

    iget-object v2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-static {v0, v3, v4, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_57148(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f0:I

    iput p2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f1:I

    iput-object p3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$5;->$m$0()V

    return-void
.end method
