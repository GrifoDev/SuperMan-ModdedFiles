.class final synthetic Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$-com_android_systemui_volume_ZenModePanel_9690(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;->$m$0()V

    return-void
.end method
