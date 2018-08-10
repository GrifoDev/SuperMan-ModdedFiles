.class final synthetic Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/FocusFinder$FocusSorter;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->lambda$-android_view_FocusFinder$FocusSorter_31401(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
