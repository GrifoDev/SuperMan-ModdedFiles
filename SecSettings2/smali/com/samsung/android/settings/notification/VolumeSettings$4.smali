.class Lcom/samsung/android/settings/notification/VolumeSettings$4;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    sparse-switch p2, :sswitch_data_0

    return v5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    return v6

    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "VolumeSettings"

    const-string/jumbo v4, "dispatchKeyEvent item is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    instance-of v3, v1, Landroid/preference/SeekBarPreference;

    if-nez v3, :cond_2

    return v5

    :cond_2
    move-object v2, v1

    check-cast v2, Landroid/preference/SeekBarPreference;

    invoke-virtual {v2, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    return v6

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x45 -> :sswitch_1
        0x51 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method
