.class Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;
.super Ljava/lang/Object;
.source "ColorAndAppearanceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;->this$1:Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;

    iput p2, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;->this$1:Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;

    invoke-static {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;->-get0(Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog;)[F

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$CalibrateDialog$1;->val$index:I

    int-to-float v2, p2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
