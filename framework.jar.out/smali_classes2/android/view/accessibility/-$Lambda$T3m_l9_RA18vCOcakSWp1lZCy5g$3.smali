.class final synthetic Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;->-$f0:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$-android_view_accessibility_AccessibilityManager_41607(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;->-$f0:Z

    iput-object p2, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$3;->$m$0()V

    return-void
.end method
