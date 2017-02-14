.class Lcom/android/server/fingerprint/FingerprintMaskView$5;
.super Ljava/lang/Object;
.source "FingerprintMaskView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintMaskView;->setSensorAreaLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintMaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get3(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get2(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get9(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x32

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get6(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/PowerManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v3

    const/high16 v10, 0x43000000    # 128.0f

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_3

    float-to-double v10, v3

    const-wide v12, 0x3ffab367a0f9096cL    # 1.6688

    mul-double/2addr v10, v12

    const-wide v12, 0x404d2c8b43958106L    # 58.348

    sub-double v0, v10, v12

    :goto_0
    const-wide v10, 0x3ec92a7380000000L    # 3.000000106112566E-6

    mul-double/2addr v10, v0

    mul-double/2addr v10, v0

    const-wide v12, 0x3f689374bc6a7efaL    # 0.003

    mul-double/2addr v12, v0

    sub-double/2addr v10, v12

    const-wide v12, 0x3febe28240b78034L    # 0.8714

    add-double v8, v10, v12

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get8(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get8(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAlphaBlendingValue()F

    move-result v2

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_0

    const-string/jumbo v10, "FingerprintServiceMaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Set maskLevelRatio from SemDisplaySolutionManager : maskLevelRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v8, v2

    :cond_0
    sget-boolean v10, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "fingerprint.display.mask.level"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-double v8, v10

    const-string/jumbo v10, "FingerprintServiceMaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Get Brightness from system properties: maskLevelRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string/jumbo v10, "fingerprint.display.hbm.delay"

    const-wide/16 v12, 0x46

    invoke-static {v10, v12, v13}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get5(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v10

    double-to-float v11, v8

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap4(Lcom/android/server/fingerprint/FingerprintMaskView;IZ)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get1(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerUnlockEffect;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get1(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerUnlockEffect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/fingerprint/FingerUnlockEffect;->runIntroAnimation()Z

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get5(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get4(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v11}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get10(Lcom/android/server/fingerprint/FingerprintMaskView;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v10, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "FingerprintServiceMaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouch : Current Brightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Alpha="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Delay="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v10, 0x1

    return v10

    :cond_3
    float-to-double v10, v3

    const-wide v12, 0x3fa212d77318fc50L    # 0.0353

    mul-double/2addr v10, v12

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x3ffe793dd97f62b7L    # 1.9046

    mul-double v0, v12, v10

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v10, "FingerprintServiceMaskView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to get Brightness from system properties: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    :cond_5
    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get4(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v11}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get10(Lcom/android/server/fingerprint/FingerprintMaskView;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get3(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/TextView;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get2(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/widget/ImageView;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get9(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get5(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get1(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerUnlockEffect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/fingerprint/FingerUnlockEffect;->runFailAnimation()Z

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap4(Lcom/android/server/fingerprint/FingerprintMaskView;IZ)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintMaskView$5;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v10}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap3(Lcom/android/server/fingerprint/FingerprintMaskView;)V

    const/4 v10, 0x0

    return v10

    :cond_6
    const/4 v10, 0x0

    return v10
.end method
