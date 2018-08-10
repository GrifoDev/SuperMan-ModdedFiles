.class public final enum Lcom/android/server/pm/FastBitmapDrawable$State;
.super Ljava/lang/Enum;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/FastBitmapDrawable$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

.field public static final enum PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;


# instance fields
.field public final brightness:F

.field public final desaturation:F

.field public final interpolator:Landroid/animation/TimeInterpolator;

.field public final viewScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    const-string/jumbo v1, "NORMAL"

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    const-string/jumbo v1, "PRESSED"

    sget-object v6, Lcom/android/server/pm/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x3ec8c8c9

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    const-string/jumbo v1, "FAST_SCROLL_HIGHLIGHTED"

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3f933333    # 1.15f

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    const-string/jumbo v1, "FAST_SCROLL_UNHIGHLIGHTED"

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    const-string/jumbo v1, "DISABLED"

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/FastBitmapDrawable$State;-><init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/pm/FastBitmapDrawable$State;

    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->PRESSED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->$VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFLandroid/animation/TimeInterpolator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    iput p4, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    iput p5, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->viewScale:F

    iput-object p6, p0, Lcom/android/server/pm/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/FastBitmapDrawable$State;
    .locals 1

    const-class v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/FastBitmapDrawable$State;
    .locals 1

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->$VALUES:[Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method
