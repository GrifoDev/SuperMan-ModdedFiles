.class public Lcom/samsung/android/visualeffect/circle/StateColorManager;
.super Ljava/lang/Object;
.source "StateColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;,
        Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;,
        Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;
    }
.end annotation


# static fields
.field private static sStateColorHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;",
            "Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x7f0d01ac

    const v6, 0x7f0d01aa

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager;->sStateColorHashMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    invoke-static {v0, v3, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v4, v7}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    invoke-static {v0, v3, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v4, v7}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->FIXNOW_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d018b

    invoke-static {v0, v3, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->FIXNOW_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d0157

    invoke-static {v0, v4, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->FIXNOW_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d0153

    invoke-static {v0, v5, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/4 v1, 0x0

    const v2, 0x7f0d01c3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01c4

    invoke-static {v0, v3, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v4, v7}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_BTN:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_2ND_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    invoke-static {v0, v3, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_2ND_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v4, v7}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SHORTCUT_2ND_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE1:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE1:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v4, v7, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE1:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v5, v6, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE2:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE2:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v4, v7, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE2:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v5, v6, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE3:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x7f0d01ab

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE3:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v4, v7, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE3:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v5, v6, v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    return-void
.end method

.method private static addColorInfo(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V
    .locals 3

    new-instance v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;-><init>(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;IIF)V

    sget-object v1, Lcom/samsung/android/visualeffect/circle/StateColorManager;->sStateColorHashMap:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;-><init>(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I
    .locals 3

    sget-object v1, Lcom/samsung/android/visualeffect/circle/StateColorManager;->sStateColorHashMap:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;-><init>(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->colorId:I

    iget v2, v0, Lcom/samsung/android/visualeffect/circle/StateColorManager$StateColorInfo;->alpha:F

    invoke-static {p0, v1, v2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->setAlphaComponent(Landroid/content/Context;IF)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static setAlphaComponent(Landroid/content/Context;IF)I
    .locals 4

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "alpha must be between 0f and 1f."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v2, v0

    shl-int/lit8 v3, v1, 0x18

    or-int/2addr v2, v3

    return v2
.end method
