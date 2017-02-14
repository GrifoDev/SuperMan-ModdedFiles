.class Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->-wrap1(Lcom/android/settings/PreviewSeekBarPreferenceFragment;IZ)V

    iget-boolean v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->commit()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->-get1(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->-get1(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->commit()V

    goto :goto_0
.end method
