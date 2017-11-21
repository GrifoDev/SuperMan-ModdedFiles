.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0202ff

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->sDeviceTypeImages:[I

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    const v0, 0x7f040316

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->sDeviceTypeImages:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setIcon(I)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b1220

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_1
    const v0, 0x7f0b1221

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const v0, 0x7f0b1222

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0b1223

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onBindView can\'t find device name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const v1, -0xff5f32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap2(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set3(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap8(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap7(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
