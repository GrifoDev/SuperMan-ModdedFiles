.class final synthetic Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$1;

    iget-object v1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager$1;->lambda$-android_view_accessibility_AccessibilityManager$1_11097(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;->$m$0()V

    return-void
.end method
