.class final synthetic Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f4:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f5:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f6:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f2:I

    iget v4, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f3:I

    iget-boolean v5, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f0:Z

    iget-boolean v6, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f1:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/PinnedStackWindowController;->lambda$-com_android_server_wm_PinnedStackWindowController_5117(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f1:Z

    iput p3, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f2:I

    iput p4, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f3:I

    iput-object p5, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;->$m$0()V

    return-void
.end method
