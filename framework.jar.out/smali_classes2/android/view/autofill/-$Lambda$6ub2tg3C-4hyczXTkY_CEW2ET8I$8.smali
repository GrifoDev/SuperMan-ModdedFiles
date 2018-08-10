.class final synthetic Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:Z

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f3:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iget-boolean v1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f0:Z

    iget-boolean v2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f1:Z

    iget-boolean v3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f2:Z

    invoke-static {v0, v1, v2, v3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_56518(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f0:Z

    iput-boolean p2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f1:Z

    iput-boolean p3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f2:Z

    iput-object p4, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$8;->$m$0()V

    return-void
.end method
