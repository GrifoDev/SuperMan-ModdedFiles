.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void
.end method
