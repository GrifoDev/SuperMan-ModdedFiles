.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$3;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get3(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get3(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method
