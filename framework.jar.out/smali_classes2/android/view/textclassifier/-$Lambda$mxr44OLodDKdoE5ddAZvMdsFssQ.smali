.class final synthetic Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Landroid/view/textclassifier/TextClassification;->lambda$-android_view_textclassifier_TextClassification_5013(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/-$Lambda$mxr44OLodDKdoE5ddAZvMdsFssQ;->$m$0(Landroid/view/View;)V

    return-void
.end method
