.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2, p2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-wrap4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
