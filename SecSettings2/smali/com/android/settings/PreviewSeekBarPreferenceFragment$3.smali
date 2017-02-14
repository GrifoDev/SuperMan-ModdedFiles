.class Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

.field final synthetic val$seekBar:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;->val$seekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;->val$seekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;->val$seekBar:Lcom/android/settings/widget/LabeledSeekBar;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method
