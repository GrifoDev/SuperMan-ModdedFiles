.class Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;
.super Ljava/lang/Object;
.source "ColorAndAppearanceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/ColorAndAppearanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/ColorAndAppearanceFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/ColorAndAppearanceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;->this$0:Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;->this$0:Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "RevertWarning"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/tuner/ColorAndAppearanceFragment$1;->this$0:Lcom/android/systemui/tuner/ColorAndAppearanceFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/ColorAndAppearanceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_color_matrix"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
