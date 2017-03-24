.class final synthetic Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$adjustedForIme:Z

.field private synthetic val$animDuration:J

.field private synthetic val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$adjustedForIme:Z

    iput-wide p3, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$animDuration:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$adjustedForIme:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$-void_onAdjustedForImeChanged_boolean_adjustedForIme_long_animDuration_LambdaImpl0;->val$animDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->-com_android_systemui_stackdivider_Divider$DockDividerVisibilityListener_lambda$1(ZJ)V

    return-void
.end method
