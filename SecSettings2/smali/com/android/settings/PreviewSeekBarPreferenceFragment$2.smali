.class Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;->this$0:Lcom/android/settings/PreviewSeekBarPreferenceFragment;

    invoke-static {v0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->-wrap0(Lcom/android/settings/PreviewSeekBarPreferenceFragment;I)V

    return-void
.end method
