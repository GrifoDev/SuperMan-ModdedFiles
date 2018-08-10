.class public Landroid/preference/SemSwitchPreferenceScreen;
.super Landroid/preference/SwitchPreference;
.source "SemSwitchPreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SemSwitchPreferenceScreen"

    const-string/jumbo v3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exist in SwitchPreferenceScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v2, 0x1090169

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setLayoutResourceInternal(I)V

    iget-boolean v2, p0, Landroid/preference/SemSwitchPreferenceScreen;->mIsDeviceDefaultDark:Z

    if-eqz v2, :cond_1

    const v2, 0x109016b

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setRecycleEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const v2, 0x109016a

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->hasRTL()Z

    move-result v3

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    if-eqz v3, :cond_3

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v7}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v6}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_0

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v7}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    return-void
.end method
