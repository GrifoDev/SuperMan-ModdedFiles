.class final synthetic Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->lambda$-android_view_textclassifier_EntityConfidence_1225(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
