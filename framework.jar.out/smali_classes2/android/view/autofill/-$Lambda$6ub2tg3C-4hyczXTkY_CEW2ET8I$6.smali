.class final synthetic Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f3:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f0:I

    iget-object v2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f1:I

    iget v4, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f2:I

    iget-object v5, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f6:Ljava/lang/Object;

    check-cast v6, Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-static/range {v0 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$-android_view_autofill_AutofillManager$AutofillManagerClient_57539(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f0:I

    iput p2, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f1:I

    iput p3, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f2:I

    iput-object p4, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$6;->$m$0()V

    return-void
.end method
