.class final synthetic Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->lambda$-com_android_systemui_servicebox_KeyguardServiceBoxContainer_20339(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onOwnerInfoSpaceChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;->$m$0(Z)V

    return-void
.end method
