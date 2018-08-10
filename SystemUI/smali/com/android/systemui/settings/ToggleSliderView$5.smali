.class Lcom/android/systemui/settings/ToggleSliderView$5;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSliderView;->showStrainAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$5;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$5;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog:Z

    return-void
.end method
