.class final synthetic Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    invoke-static {v0}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->-android_print_PrintManager$PrintServiceRecommendationsChangeListenerWrapper-mthref-0(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30;->$m$0()V

    return-void
.end method
